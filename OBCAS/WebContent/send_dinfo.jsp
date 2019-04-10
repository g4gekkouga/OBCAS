<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="javax.servlet.*" %>
    
<% 
	
String sql = null;

String url="jdbc:mysql://localhost:3306/obcas";
String name="root";
String password="root";

String out1 = "";

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,name,password);
	
	
	
	String dname=request.getParameter("dname"); 
	
	
	sql = "Select * from doctorinfo where name=? ";
	
	PreparedStatement st=con.prepareStatement(sql);  
	
	st.setString(1,dname);
	
	ResultSet rs = st.executeQuery(); 
	
	 while(rs.next())
	   {
		   out1 = out1 +"<p><font color='white'>Doctor ID : "+rs.getString("id")+"<br>";
		   out1 = out1 +"Name : "+rs.getString("name")+"<br>";
		   out1 = out1 +"Sex : "+rs.getString("gender")+"<br>";
		   out1 = out1 +"Category : "+rs.getString("speciality")+"<br>";
		   out1 = out1 +"Specialization : "+rs.getString("specialization")+"<br>";
		   out1 = out1 +"Email : "+rs.getString("uemail")+"<br>";
		   out1 = out1 +"Phone No : "+rs.getString("mobileno")+"<br></font></p>";
	   }
	 
	 response.getWriter().println(out1); 
	
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>