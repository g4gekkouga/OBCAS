package mylogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import REGISTER.DAO.*;


/**
 * Servlet implementation class RegisterP
 */
@WebServlet("/RegisterP")
public class RegisterP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterP() {
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
		
		String name = request.getParameter("name");
		String uname = request.getParameter("username");
		String upass = request.getParameter("password");
		String bday = request.getParameter("birthday");
		String sex = request.getParameter("gender");
		String uemail = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		registerdao dao =new registerdao();
		
		boolean check = dao.registerPatient(name, uname, upass, bday, sex, uemail, phone) ;
		
		if(check)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
			
			response.sendRedirect("patientLogin.jsp");
		}
		else {
			response.sendRedirect("Home.jsp");
		}
		
	}

}
