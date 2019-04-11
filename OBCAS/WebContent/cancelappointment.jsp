<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    System.out.println("till here working");
    
    String patient=request.getParameter("patient");
    String date=request.getParameter("date");
    String buffer="<p>your appointment on";
    try{
   	 Class.forName("com.mysql.cj.jdbc.Driver");
   	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
   	 Statement st = con.createStatement();  
   	 ResultSet rs = st.executeQuery("Select * from appointments where adate='"+date+"' and pname='"+patient+"' and status='Active'"); 
   	 if(rs.next())
   	 {
   		 String doctor=rs.getString("dname");
   		 String starttime=rs.getString("starttime");
   		 Statement st1 = con.createStatement();  
   		Statement st2 = con.createStatement();  
   		int c= st2.executeUpdate("UPDATE appointments SET status = 'Not Active'  WHERE pname='"+patient+"' and adate='"+date+"' and dname='"+doctor+"'");
   		int b= st1.executeUpdate("UPDATE doctortime SET status = 'Active'  WHERE starttime='"+starttime+"' and adate='"+date+"' and dname='"+doctor+"'");
   		 if(b>0 && c>0){
   			 System.out.println("appointment cancelled succesfully");
   			 buffer=buffer+" "+date+" was cancelled succesfully";
   			 
   		 }
   		 else
   		 {
   			 System.out.println("appointment cancelled unsuccesfully"); 
   		 }
   	 }
   	 else
   	 {
   		 System.out.println("no appointment was found");
   	 }
    }
    catch(Exception e)
    {
    	 System.out.println(e);
    }
    
    %>
