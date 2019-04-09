<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="javax.servlet.*" %>
    
<% 
	
String sql = null;

String url="jdbc:mysql://localhost:3306/obcas";
String name="root";
String password="root";

String out1 = null ;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,name,password);
	
	System.out.println("Done_app");
	
	String pname=request.getParameter("pname"); 
	System.out.println(pname);
	
	sql = "Select * from patientinfo where name=? ";
	
	PreparedStatement st=con.prepareStatement(sql);  
	
	st.setString(1,pname);
	
	ResultSet rs = st.executeQuery(); 
	
	 while(rs.next())
	   {
		   out1 = out1 +"<p><font color='yellow'>Patient ID : "+rs.getString("id")+"<br>";
		   out1 = out1 +"Name : "+rs.getString("name")+"<br>";
		   out1 = out1 +"Sex : "+rs.getString("gender")+"<br>";
		   out1 = out1 +"DOB : "+rs.getString("birthday")+"<br>";
		   out1 = out1 +"Email : "+rs.getString("uemail")+"<br>";
		   out1 = out1 +"Phone No : "+rs.getString("phone")+"<br></font></p>";
	   }
	 
	 response.getWriter().println(out1); 
	
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>