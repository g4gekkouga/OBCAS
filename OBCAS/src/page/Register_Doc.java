package page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import LOGIN.DAO.*;
/**
 * Servlet implementation class Register_Doc
 */
@WebServlet("/Register_Doc")
public class Register_Doc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register_Doc() {
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
		
		String dname = request.getParameter("doc_name");
		String duname = request.getParameter("doc_uname");
		String dpass = request.getParameter("doc_pass");
		String dspec = request.getParameter("doc_spec");
		String demail = request.getParameter("doc_email");
		String ds = request.getParameter("doc_s");
		String dmobile = request.getParameter("doc_mobile");
		String dsex = request.getParameter("doc_sex");
		
		logindao dao =new logindao();
		dao.connectDB();
		
		if(dao.register_doctor(dname, duname, dpass, dspec, demail, ds, dmobile, dsex))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",dname);
			
			response.sendRedirect("adminwelcome.jsp?admin_name='Registered'");
		}
		else {
			response.sendRedirect("adminLogin.jsp");
		}
		
	}

}
