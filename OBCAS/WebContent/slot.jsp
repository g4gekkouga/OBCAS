<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="javax.servlet.*" %>
<%

String starttime=request.getParameter("st");
System.out.println(starttime);

/*
//System.out.println(starttime);


*/

System.out.println("1234");
response.getWriter().println("your booking is done at"+starttime);
/*
try{
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients","root","Mahi&1802"); 
	 String sql="insert into apptest values(?,?,?,?) ";	
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, starttime);
		st.setString(2, endtime);
		st.setString(3, doctor);
		st.setString(2, date);
		st.executeUpdate();
		
	   
	 
	 }
	 catch(Exception e){
	     System.out.println(e);
	 }*/

%>