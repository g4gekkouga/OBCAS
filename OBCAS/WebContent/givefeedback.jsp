<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    response.setContentType("html;charset=UTF-8");
    String patient=request.getParameter("patient");
    String date=request.getParameter("date");
    String doctor=request.getParameter("doctor");
    String feed=request.getParameter("feed");
    System.out.println(patient);
    System.out.println(date);
    System.out.println(doctor);
    System.out.println(feed);
    try{
   	 Class.forName("com.mysql.cj.jdbc.Driver");
   	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
   	 Statement st1 = con.createStatement();  
   	
   		 ResultSet rs=st1.executeQuery("Select * from appointments where adate='"+date+"' and dname='"+doctor+"' and pname='"+patient+"'"); 
   		
   		 if(rs.next())
   		 {
   			 if(rs.getString("status").equals("Active"))
   			 {
   			 String sql="insert into feedback (id,dname,pname,adate,feedback) VALUES(null, ?,?,?,?)";
   			 PreparedStatement st=con.prepareStatement(sql);
   			 st.setString(1,doctor);
   			 st.setString(2,patient);
   			 st.setString(3,date);
   			 st.setString(4,feed);
   			 
   			int a= st.executeUpdate();
   		 
   			 
   	   if(a==0)
   	   {
   		   response.getWriter().print("feedback failed");  
   	   }
   	   
   	
   	   
   	   else
   	   {
   		   System.out.println("YOUR feedback sent SUCCESFULLY");
   		   response.getWriter().print("<p style='color:#AFF327;'>YOUR feedback sent SUCCESFULLY</p>");   
   	 }
   		 }
   		 else {System.out.println("query unsuccesful");}
   		 }
   		 else {
   			 System.out.println("feed failed");
   		 }
   }
   	 catch(Exception e){
   		 System.out.println(e);
   	 }
    %>
