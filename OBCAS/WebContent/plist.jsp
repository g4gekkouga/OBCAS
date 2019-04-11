<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
try {
String connectionURL = "jdbc:mysql://localhost:3306/obcas";
Connection con;
Class.forName("com.mysql.cj.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "root"); 
//Add the data into the database
String sql = "SELECT `name` FROM patientinfo WHERE `name` LIKE '"+str+"%' LIMIT 10";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
out.println("<li onclick='fill("+rs.getString("name")+");'>"+rs.getString("name")+"</i>");
}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>