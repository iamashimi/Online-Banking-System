package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoMVC;
import model.Customer;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.retrive all parameters from JSp page
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals(null) || username=="" || password.equals(null) || password==""){
			request.setAttribute("msg", "All Fields are mendatory");
			getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		
		else{
			//2. set all values in Customer class object
			Customer c = new Customer();
			c.setUsername(username);
			c.setPassword(password);
			
			String sql = "select * from customer where username=? and password=?";
			
			//3. call a method in Dao to select data from table
			ResultSet rs = DaoMVC.LoginUser(c, sql);
			
			try {
				if(rs.next()){
					getServletContext().getRequestDispatcher("/HomePage.jsp").forward(request, response);
				}
				else{
					getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Got an SQL exception");
				e.printStackTrace();
			}
		}
		
		
			}

	
	}
