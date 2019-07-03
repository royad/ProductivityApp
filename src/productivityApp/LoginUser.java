package productivityApp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class LoginUser
 */
@WebServlet(name="login", urlPatterns = {"/LoginUser"})
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUser() {
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
		boolean status = false;  

		try {
			Connection con = DatabaseConnection.connectToDB();
			
		    response.setContentType("text/html");  
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String sql = "select * from logins where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();  
			status = rs.next();  
			
			if(status) {
//				request.getRequestDispatcher("account.jsp").forward(request,response);
				response.sendRedirect("account.jsp");
		        HttpSession session = request.getSession();  

//		        System.out.println((int) session.getAttribute("sessionId"));
//		        int sessionId = (int) session.getAttribute("sessionId");

//		        System.out.println(sessionId);
		        // get id of user
		        String sqlId = "select id from logins where email=?";
				PreparedStatement psId = con.prepareStatement(sql);
				ps.setString(1, username);
				ResultSet rsId = ps.executeQuery();  
				rsId.next();
				String userid = rsId.getString("id");
				System.out.println("id " + userid);
				session.setAttribute("userid", userid);  
			}
			
			else {
				request.getRequestDispatcher("login.jsp").forward(request,response);  
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
