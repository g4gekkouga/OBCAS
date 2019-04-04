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
	System.out.println("Done_app1");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,name,password);
	
	System.out.println("Done_app2");
	
//    String strRawParameters = request.getParameter("appday");

//    String[] strParsedParameters = strRawParameters.split(",");
	
	String dname =  request.getParameter("appdoc"); 
	System.out.println(dname);
	
	String appday = request.getParameter("appday"); //strParsedParameters[0]; 
	System.out.println(appday);
	
	if (dname==null) System.out.println("Yohoo its null");
	
	sql = "Select * from appointment where dname=? and day=? ";
	
	PreparedStatement st=con.prepareStatement(sql);  
	
	st.setString(1,dname);
	st.setString(2,appday);
	
	ResultSet rs = st.executeQuery();
	
	out1 = out1 + "<p>";
	while(rs.next())
	   {
		   out1 = out1 + "Patient Name : "+rs.getString("pname")+"<br>Time : "+rs.getString("apptime")+"<br>";
		   out1 = out1 + "<br>";
	   }
	out1 = out1 + "</p>";
	
	response.getWriter().println(out1); 
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
}	

%>