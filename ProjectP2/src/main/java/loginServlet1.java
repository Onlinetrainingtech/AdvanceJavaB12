

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet1
 */
@WebServlet("/loginServlet1")
public class loginServlet1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		
		String u1=req.getParameter("uname");
		String p1=req.getParameter("pass");
		
		if(u1.equals("admin")&&p1.equals("admin@123"))
		{
			//out.println("LoginSucess!!");
			RequestDispatcher rd=req.getRequestDispatcher("LoginHome.html");
			rd.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("error.html");
			rd.include(req, resp);
			//out.println("LoginFail!!!");
		}
		
		//out.println("Welcome to Servlet data is::"+u1+""+p1);
		
	}

}
