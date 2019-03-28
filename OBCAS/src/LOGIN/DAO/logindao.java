package LOGIN.DAO;
import java.sql.*;
import java.sql.PreparedStatement;

public class logindao {
	String sql="select * from info where first_name=? ";
	String url="jdbc:mysql://localhost:3306/patients";
	String name="root";
	String password="Mahi&1802";
	public boolean check (String uname,String pass)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,name,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,uname);
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

}
