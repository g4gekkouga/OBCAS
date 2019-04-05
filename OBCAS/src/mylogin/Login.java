package mylogin;

import java.io.IOException;
import LOGIN.DAO.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		logindao dao =new logindao();
		dao.connectDB();
		
		if(dao.checkAdmin(uname, upass))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
			
			response.sendRedirect("adminwelcome.jsp?admin_name="+uname+"");
		}
		else {
			response.sendRedirect("Home.jsp");
		}
		
	}

	

}
