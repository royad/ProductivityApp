package productivityApp;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SubmitTask
 */
@WebServlet(name="submitTask", urlPatterns = {"/SubmitTask"})
public class SubmitTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitTask() {
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

		try
		{
			Connection con = DatabaseConnection.connectToDB();

			Statement statement = con.createStatement();
			
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			String date = request.getParameter("date");
			
			HttpSession session = request.getSession();  
			String uId = (String)session.getAttribute("userid");
			
			
			int i= statement.executeUpdate("insert into tasks(user,name,description,dueDate)values"
					+ "('"+uId+"','"+name+"','"+description+"','"+date+"')");
			System.out.println("Data is successfully inserted!"); 
			
//			request.getRequestDispatcher("account.jsp").forward(request,response);  
			response.sendRedirect("account.jsp");

		}
		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}
	}

}
