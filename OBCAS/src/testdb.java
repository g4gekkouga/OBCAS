/**
 *		
 *		description: This class contains the connection with database.
 *		version:	 1.2
 *		creator:     bhaskar 
 *		last modification date:
 *      modifier:      bhaskar
 **/


//package Project.sql;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class testdb 
{	
	public static void main(String[] args) {
	Connection makeConnection() throws Exception 
	{		
		try
		{		
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			ServletConfig sc= getServletConfig();
			ServletContext scon=sc.getServletContext();
			String driver=scon.getParameter("driver");
						String url=scon.getParameter("url");

			String uname=scon.getParameter("uname");
			String pass=scon.getParameter("pass"); 

			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
			conn=DriverManager.getConnection("jdbc:oracle:thin:@impart-:5522:xe","doctor", "doctor");			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		
		
		return conn;
	}
	}
	
	public void setQuery(String sql)throws Exception
	{
		 pstmt=conn.prepareStatement(sql);   
	}
	public void setQuery(String sql,String scrollable,String updateable)throws Exception
	{
		if(scrollable.equals("") && updateable.equals(""))
					 pstmt=conn.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);  
		
		if(scrollable.equals("scroll") && updateable.equals(""))
			 pstmt=conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY); 
	    
		if(scrollable.equals("") && updateable.equals("update")) 
			pstmt=conn.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_UPDATABLE); 
	    
	    if(scrollable.equals("scroll") && updateable.equals("update")) 
			pstmt=conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 
	}
	public void setInt(int pos,int val)throws Exception
	{
			pstmt.setInt(pos,val);
	}
	public void setString(int pos,String  val)throws Exception
	{
			pstmt.setString(pos,val);
	}
	public void setDouble(int pos,double  val)throws Exception
	{
			pstmt.setDouble(pos,val);       
	}	
	public void setFloat(int pos,float  val)throws Exception
	{
			pstmt.setFloat(pos,val);       
	}	
		
	public void setBoolean(int pos,boolean  val)throws Exception
	{
			pstmt.setBoolean(pos,val);       
	}	
	
	public ResultSet executeQuery()
	{
		try
		{
		    rs=pstmt.executeQuery();
		}
		catch(Exception e)
		{
			System.err.println("Exception caught");
			e.printStackTrace();
		}
		return rs;
	}
	
	public int executeUpdate()throws Exception
		{
			return pstmt.executeUpdate();
		}

	
	public void closeConnection() throws Exception
	{
			try{
			if(pstmt!=null)
				pstmt.close();
			if(rs!=null)
				rs.close();
			if(conn!=null)
				conn.close();
			}
			catch(Exception e)
			{
				System.out.println("Error="+e.getMessage());
			}
		}	
	
	
	private Connection conn=null;	
	private PreparedStatement pstmt=null;
	private ResultSet  rs=null;
	private String sql="";	
	

}
