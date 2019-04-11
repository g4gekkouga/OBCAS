<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

    <%
response.setContentType("html;charset=UTF-8");
String patient=request.getParameter("patient");
String date=request.getParameter("date");
System.out.println("hello");
String buffer="<select  class='form-control' id='doc1' name='doctors' ><option value='-1'>select doctor</option>";    
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
 Statement st = con.createStatement();  
 ResultSet rs = st.executeQuery("Select * from appointments where pname='"+patient+"' and adate='"+date+"'");  
   while(rs.next())
   {
	   buffer=buffer+"<option value='"+rs.getString("dname")+"'>"+rs.getString("dname")+"</option>";   
   }  
   buffer=buffer+"</select>"; 
 response.getWriter().print(buffer); 
 rs.close();
 st.close();
 con.close();
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>
    