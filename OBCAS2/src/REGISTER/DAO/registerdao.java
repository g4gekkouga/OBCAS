package REGISTER.DAO;

import java.sql.*;

public class registerdao {
	
	String sql; //="select * from admininfo where uname=? and upass=?";
	
	String url="jdbc:mysql://localhost:3306/obcas";
	String name="root";
	String password="root";
	
	Connection con = null;
	
	public boolean connectDB () {
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,name,password);
			return true;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
	}
	
	public boolean registerPatient (String Name,String uname,String upass,String bday,String sex,String uemail,String phone)
	{
		try
		{
	
			sql = "insert into patientinfo values(NULL, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,Name);
			st.setString(2,uname);
			st.setString(3,upass);
			st.setString(4,bday);
			st.setString(5,sex);
			st.setString(6,uemail);
			st.setString(7,phone);
			
			
			st.executeUpdate();
			
			String sql1 = "select * from patientinfo where uname=? and upass=?" ;
			
			PreparedStatement st1=con.prepareStatement(sql1);
			
			st1.setString(1,uname);
			st1.setString(2,upass);
			
			ResultSet rs1 = st1.executeQuery();
			
			if(rs1.next())
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
