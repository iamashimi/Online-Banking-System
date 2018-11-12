package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import model.LoginBean;

/**
 * Servlet implementation class LoginServelet
 */
@WebServlet("/LoginServelet")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelet() {
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
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginBean loginBean = new LoginBean();
		
		loginBean.setUsername(username);
		loginBean.setPassword(password);
		
		LoginDao loginDao = new LoginDao();
		
		try{
			String userValidate = loginDao.authenticateUser(loginBean);
			
			if(userValidate.equals("Admin_Role"))
			{
				System.out.println("Admin");
				
				HttpSession session =request.getSession();
				session.setAttribute("Admin", username);
				request.setAttribute("username", username);
				
				request.getRequestDispatcher("/AdminHomePage.jsp").forward(request, response);
			}
			
			else if(userValidate.equals("User_Role")){
				System.out.println("Customer");
				
				HttpSession session1 =request.getSession();
				session1.setAttribute("Customer", username);
				request.setAttribute("username", username);
				
				request.getRequestDispatcher("HomePage.jsp").forward(request, response);
				request.getRequestDispatcher("/Head.jsp").forward(request, response);
			}
			
			else{
				System.out.println("Error = "+ userValidate);
				request.setAttribute("errmessage", userValidate);
				System.out.println("Error message = " +userValidate);
				
				request.getRequestDispatcher("/Login.jsp").forward(request, response);
			}
			
		}catch (IOException e1){
			e1.printStackTrace();
		}
	}

}
