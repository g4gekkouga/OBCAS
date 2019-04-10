<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="javax.servlet.*" %>
    <%@page import="java.util.*"%>
    
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
	
	 Statement st=con.createStatement();
     ResultSet rs = st.executeQuery("select * from patientinfo");

     List li = new ArrayList();

       while(rs.next())
       {
           li.add(rs.getString("name"));
       }
	
	
       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       }
	
       //jQuery related start
      
       String query = (String)request.getParameter("q");

       int cnt=1;
       for(int j=0;j<str.length;j++)
       {
           if(str[j].toUpperCase().startsWith(query.toUpperCase()))
           {
              out.print(str[j]+"\n");
              if(cnt>=5)// 5=How many results have to show while we are typing(auto suggestions)
              break;
              cnt++;
            }
       }
    
       //jQuery related end
       
       rs.close();
		st.close();
		con.close();
		
}
catch(Exception e)
{
	
	System.out.println(e);
	
}	
	
	
	
	
	
%>