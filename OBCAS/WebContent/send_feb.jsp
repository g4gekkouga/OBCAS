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
	
	System.out.println("Done_app");
	
	String pname=request.getParameter("pname"); 
	String dname=request.getParameter("dname");
	String adate=request.getParameter("adate");
	
	
	sql = "Select * from feedback where pname=? and dname=? and adate=? ";
	
	PreparedStatement st=con.prepareStatement(sql);  
	
	st.setString(1,pname);
	st.setString(2,dname);
	st.setString(3,adate);
	
	ResultSet rs = st.executeQuery(); 
	
	
	 while(rs.next())
	   {
		 out1 = out1+"<br>";	
		 out1 = out1 +"<p><font color='white'>Feedback : <br> "+rs.getString("feedback")+"<br></font></p>";
		 out1 = out1+"<br>";	
	   }
	 
	 response.getWriter().println(out1); 
	
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>