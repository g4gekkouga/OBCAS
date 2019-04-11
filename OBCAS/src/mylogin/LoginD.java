package mylogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import LOGIN.DAO.*;

/**
 * Servlet implementation class LoginD
 */
@WebServlet("/LoginD")
public class LoginD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		logindao dao =new logindao();
		
		dao.connectDB();
		
		if(dao.checkDoctor(uname, upass))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
			
			response.sendRedirect("doctorwelcome.jsp?doctor_name="+uname+"");
		}
		else {
			response.sendRedirect("doctorLogin.jsp?status=' Incorrect Username or Password '");
		}
		
	}

}
