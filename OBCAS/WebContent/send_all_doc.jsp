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
	
	sql = "Select * from doctorinfo ";
	
	PreparedStatement st=con.prepareStatement(sql);
	
	ResultSet rs = st.executeQuery(); 
	
	 while(rs.next())
	   {
		   out1 = out1 +"<p><font color='yellow'>Doctor ID : "+rs.getString("id")+"<br>";
		   out1 = out1 +"Name : "+rs.getString("name")+"<br></font></p>";
		   out1 = out1 +"<br>" ;
	   }
	 
	 response.getWriter().println(out1); 
	
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>