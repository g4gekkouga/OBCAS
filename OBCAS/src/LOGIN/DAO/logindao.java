package LOGIN.DAO;
import java.sql.*;

public class logindao {
	
	String sql;
	
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
	
	public boolean checkAdmin (String uname,String upass)
	{
		try
		{
			
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
			
			sql = "select * from doctorinfo where uname=? and upass=? ;";
			
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
	
	public boolean delete_app(String dname, String appday, String apptime) {
		
		try
		{
	
			sql = "Select * from appointment where day=? and apptime=? and dname=? ;";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,appday);
			st.setString(2,apptime);
			st.setString(3,dname);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				String sql1 = "UPDATE appointment SET `status`=? WHERE `day`=? and apptime=? and dname =? ;";
				PreparedStatement st1 = con.prepareStatement(sql1);
				
				st1.setString(2,appday);
				st1.setString(3,apptime);
				st1.setString(4,dname);
				
				if (rs.getString("status").equals("Active")) st1.setString(1,"Not Active");
				else st1.setString(1,"Active");
				
				st1.executeUpdate();
				
				System.out.println("Fine till here");
				
				return true ;
			}
			
			else return false;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
	}
	
	
	public boolean update_pres(String dname, String appday, String apptime, String app_pres) {
		
		try
		{
	
			sql = "Select * from appointment where day=? and apptime=? and dname=? ;";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,appday);
			st.setString(2,apptime);
			st.setString(3,dname);
			
			ResultSet rs=st.executeQuery();
			
			String pname;
			
			if(rs.next()) pname  = rs.getString("pname") ;
			
			else return false;
			
			String sql1 = "Select * from msgtable where patient=? and doctor=? and appday=? ;" ;
			
			PreparedStatement st1=con.prepareStatement(sql1);
			
			st1.setString(1,pname);
			st1.setString(2,dname);
			st1.setString(3,appday);
			
			ResultSet rs1=st1.executeQuery();
			
			if(rs1.next()) {
				String sql2 = "UPDATE msgtable SET pres=? WHERE patient=? and doctor=? and appday=? ;" ;
				
				PreparedStatement st2=con.prepareStatement(sql2);
				st2.setString(1,app_pres);
				st2.setString(2,pname);
				st2.setString(3,dname);
				st2.setString(4,appday);
				
				st2.executeUpdate() ;
				
				return true ;
			}
			else {
				
				String sql2 = "Insert into msgtable values(null, ?, ?, ?, null, ?) ;" ;
				
				PreparedStatement st2=con.prepareStatement(sql2);
				
				st2.setString(1,pname);
				st2.setString(2,dname);
				st2.setString(3,appday);
				st2.setString(4,app_pres);
				
				st2.executeUpdate() ;
				
				return true ;
			}
				
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
		
}

	public boolean register_doctor(String dname, String duname, String dpass, String dspec, String demail) {
		
		try
		{
	
			sql = "insert into doctorinfo values(NULL, ?, ?, ?, ?, ?);";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, dname);
			st.setString(2, duname);
			st.setString(3, dpass);
			st.setString(4, demail);
			st.setString(5, dspec);
			
			st.executeUpdate();
			
			String sql1 = "select * from doctorinfo where uname=? and upass=?" ;
			
			PreparedStatement st1=con.prepareStatement(sql1);
			
			st1.setString(1, duname);
			st1.setString(2, dpass);
			
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
	
	public boolean remove_doc(String dname) {
		
		try
		{
	
			sql = "delete from doctorinfo where name=? ;";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, dname);
			
			int i;
			
			i=st.executeUpdate();
			
	/*		String sql1 = "select * from doctorinfo where name=?" ;
			
			PreparedStatement st1=con.prepareStatement(sql1);
			
			st1.setString(1, dname);
			
			ResultSet rs1 = st1.executeQuery();     */
			
			if(i==0)
			{
				return false;
			}
			
			else return true;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
		
		
	}
	
	public boolean remove_pat(String pname) {
		
		try
		{
	
			sql = "delete from patientinfo where name=? ;";

			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, pname);
			
			int i;
			
			i = st.executeUpdate();
			
/*			String sql1 = "select * from patientinfo where name=?" ;
			
			PreparedStatement st1=con.prepareStatement(sql1);
			
			st1.setString(1, pname);
			
			ResultSet rs1 = st1.executeQuery(); */
			
			if(i==0)
			{
				return false;
			}
			
			else return true;
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return false;
		}
		
		
	}
	

}
