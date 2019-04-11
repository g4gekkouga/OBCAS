<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

System.out.println("Haaa...Working");
String time=request.getParameter("time");
String date=request.getParameter("date");
String doctor=request.getParameter("doctor");
String patient=request.getParameter("patient");
String msg=request.getParameter("msg");
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obcas","root","root");  
	 Statement st1 = con.createStatement();  
	 Statement st2= con.createStatement();  
	 
	 
	
		 String sql1="insert into msgtable (patient,doctor,appday,msg) VALUES(?,?,?,?)";
		 PreparedStatement st3=con.prepareStatement(sql1);
		 st3.setString(1,patient);
		 st3.setString(2,doctor);
		 st3.setString(3,date);
		 st3.setString(4,msg);
		 int d= st3.executeUpdate();
		 if(d==0){System.out.println("insertion failed");}
		 else {System.out.println("insertion SUCCECFUL");}
		 
	 
	 
	int b= st2.executeUpdate("UPDATE appointments SET status = 'Not Active', pname='"+patient+"' WHERE adate='"+date+"' and dname='"+doctor+"'");
	
	
	Statement st4= con.createStatement();
	int x = st4.executeUpdate("UPDATE doctortime SET status = 'Not Active' WHERE adate='"+date+"' and dname='"+doctor+"' and starttime='"+time+"'");
	
	
	ResultSet rs=st1.executeQuery("Select * from doctortime where adate='"+date+"' and dname='"+doctor+"' and starttime='"+time+"'"); 
		
		 if(rs.next())
		 {
			 String sql="insert into appointments (dname,pname,starttime,endtime,status,adate) VALUES(?,?,?,?,?,?)";
			 PreparedStatement st=con.prepareStatement(sql);
			 st.setString(1,doctor);
			 st.setString(2,patient);
			 st.setString(3,rs.getString("starttime"));
			 st.setString(4,rs.getString("endtime"));
			 st.setString(5,"Active");
			 st.setString(6,rs.getString("adate"));
			int a= st.executeUpdate();
		 
			 
	   if(a==0)
	   {
		   response.getWriter().print("booking failed");  
	   }
	   
	
	   
	   else
	   {
		   System.out.println("YOUR APPOINTMENT BOOKED SUCCESFULLY");
		   response.getWriter().print("YOUR APPOINTMENT BOOKED SUCCESFULLY");   
	 }
		 }
		 else {System.out.println("query unsuccesful");}
}
	 catch(Exception e){
	     System.out.println(e);
	 }


%>