<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
String patient=request.getParameter("patient");
System.out.println("ming");
String buffer="";
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
	 Statement st = con.createStatement();  
	 ResultSet rs = st.executeQuery("Select * from appointments where pname='"+patient+"' and status='Active'");  
	 System.out.println("ming");
	   while(rs.next())
	   {
		 
		   buffer=buffer+rs.getString("adate")+"  "+rs.getString("starttime")+"-"+rs.getString("endtime")+"\n";   
		  
		   System.out.println(buffer);
	   }  
	   
	 response.getWriter().print(buffer); 
	 }
	 catch(Exception e){
	     System.out.println(e);
	 }

%>