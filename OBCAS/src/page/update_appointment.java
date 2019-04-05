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
 * Servlet implementation class update_appointment
 */
@WebServlet("/update_appointment")
public class update_appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_appointment() {
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
		
		String dname = request.getParameter("app_doc_u");
		String appday = request.getParameter("app_day_u");
		String apptime = request.getParameter("app_time_u");
		String app_pres = request.getParameter("message");
		
		logindao dao =new logindao();
		dao.connectDB();
		
		boolean retn = false;
		
		if (app_pres.equals("empty")) retn = dao.delete_app(dname, appday, apptime);
		
		else retn = dao.update_pres(dname, appday, apptime, app_pres) ;
		
		if(retn)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",dname);
			
			response.sendRedirect("doctorwelcome.jsp?doctor_name="+dname+"");
		}
		else {
			response.sendRedirect("doctorLogin.jsp");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
