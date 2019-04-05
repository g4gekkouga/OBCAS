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
 * Servlet implementation class Delete_Doc
 */
@WebServlet("/Delete_Doc")
public class Delete_Doc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_Doc() {
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
		
		String dname = request.getParameter("doctor_name");
		
		logindao dao =new logindao();
		dao.connectDB();
		
		if(dao.remove_doc(dname))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",dname);
			
			response.sendRedirect("adminwelcome.jsp?admin_name='Doctor Removed'");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("username",dname);
			
			response.sendRedirect("adminwelcome.jsp?admin_name='Doctor Doesnt Exist'");
		}
	}

}
