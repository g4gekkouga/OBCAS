<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="javax.servlet.*" %>

<%
response.setContentType("html;charset=UTF-8");
String spec=request.getParameter("spec"); 
String name=request.getParameter("patient");
System.out.println(name);
 String buffer="<select  class='form-control' id='doctor' name='doctors' ><option value='-1'>select doctor</option>";  
 try{
	 System.out.println("till here 1");
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
 Statement st = con.createStatement();  
 
 
 ResultSet rs = st.executeQuery("Select * from doctorinfo where speciality='"+spec+"' ");  
   while(rs.next())
   {
	   buffer=buffer+"<option value='"+rs.getString("name")+"'>"+rs.getString("name")+"</option>";   
   }  
 buffer=buffer+"</select>";  
 response.getWriter().print(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }

 %>
