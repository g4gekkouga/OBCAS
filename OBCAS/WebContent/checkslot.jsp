<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<%
String date=request.getParameter("date");
System.out.println(date);
String doctor=request.getParameter("doctor");
System.out.println(doctor);
String buffer="<select  class='form-control' id='tim' name='tim' ><option value='-1'>select time</option>";  
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
	 Statement st = con.createStatement();  
	 ResultSet rs = st.executeQuery("Select * from doctortime where adate='"+date+"' and dname='"+doctor+"'");  
	   while(rs.next())
	   {
		   if(rs.getString("status").equals("Active"))
		   {
		   buffer=buffer+"<option value='"+rs.getString("starttime")+"'>"+rs.getString("starttime")+"-"+rs.getString("endtime")+"</option>";   
		   }
	   }  
	 buffer=buffer+"</select>";  
	 response.getWriter().print(buffer); 
	 }
	 catch(Exception e){
	     System.out.println(e);
	 }



%>