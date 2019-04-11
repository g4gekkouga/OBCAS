<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="javax.servlet.*" %>
    
<% 
	
String sql = null;

String url="jdbc:mysql://localhost:3306/obcas";
String name="root";
String password="root";

String out1 = "<option value='Default'>";

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,name,password);
	
	String date =  request.getParameter("date"); 
	String dname =  request.getParameter("dname");
	
	sql = "Select * from appointments where adate=? and dname=? ;";
	
	PreparedStatement st=con.prepareStatement(sql);  
	
	st.setString(1,date);
	st.setString(2,dname);
	
	
	
	ResultSet rs = st.executeQuery(); 
	
	 while(rs.next())
	   {
		   out1 = out1 +"<option value='"+rs.getString("starttime")+"'>";

	   }
	 
	 response.getWriter().println(out1); 
	
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>