package LOGIN.DAO;
import java.sql.*;
import java.sql.PreparedStatement;

public class logindao {
	
	String sql; //="select * from admininfo where uname=? and upass=?";
	String url="jdbc:mysql://localhost:3306/obcas";
	String name="root";
	String password="root";
	
	public boolean checkAdmin (String uname,String upass)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,name,password);
			
			sql = "select * from admininfo where uname=? and upass=?";
			
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,uname);
			st.setString(2,upass);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			else return false;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
		//	System.out.println("hello");
			return false;
		}
		//return false;
	
		
	}
	
	public boolean checkDoctor (String uname,String upass)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,name,password);
			
			sql = "select * from doctorinfo where uname=? and upass=?";
			
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,uname);
			st.setString(2,upass);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			else return false;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
	
		
	}
	
	public boolean checkPatient (String uname,String upass)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,name,password);
			
			sql = "select * from patientinfo where uname=? and upass=?";
			
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,uname);
			st.setString(2,upass);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			else return false;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}

		
	}

}
