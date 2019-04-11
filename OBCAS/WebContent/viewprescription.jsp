<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    response.setContentType("html;charset=UTF-8");
    String patient=request.getParameter("patient");
    System.out.println(patient);
    String date=request.getParameter("date");
    String doctor=request.getParameter("doctor");
    System.out.println(date);
    System.out.println(doctor);
    String buffer="<p>";
    try{
    	 Class.forName("com.mysql.cj.jdbc.Driver");
    	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
    	 Statement st3 = con.createStatement();  
    	 ResultSet rs3 = st3.executeQuery("Select * from msgtable where appday='"+date+"' and doctor='"+doctor+"' and patient='"+patient+"'");  
    	
    	   if(rs3.next())
    	   {
    		   buffer=buffer+rs3.getString("pres");   
    		  
    	   }  
    	   else 
    	   {
    		   System.out.println("no such record exist");
    	   }
    	 buffer=buffer+"</p>";  
    	 response.getWriter().print(buffer); 
    	 }
    	 catch(Exception e){
    	     System.out.println(e);
    	 }
    
    
    
    %>
