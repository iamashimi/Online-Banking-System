package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoMVC;
import model.Customer;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		
				String fusername= request.getParameter("fusername");
				String lusername = request.getParameter("lusername");
				String address = request.getParameter("address");
				String nic = request.getParameter("nic");
				String gender = request.getParameter("gender");
				String dateofbirth = request.getParameter("dateofbirth");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String accountnum = request.getParameter("accountnum");
				String amount = request.getParameter("amount");
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				//2. Set all the values in Model class, object
				HttpSession session = request.getSession();
				Customer c = new Customer();
				
				c.setFusername(fusername);
				c.setLusername(lusername);
				c.setAddress(address);
				c.setNic(nic);
				c.setGender(gender);
				c.setDateofbirth(dateofbirth);
				c.setEmail(email);
				c.setPhone(phone);
				c.setAccountnum(accountnum);
				c.setAmount(amount);
				c.setUsername(username);
				c.setPassword(password);
				
				//3. call a method in DaoMVC to update data in table
				String sql = "update oop set(Fname,Lname,Address,NIC,Gender,DOB,Email,PhoneNo,AccountNo, Amount, UserName, Password)=(?,?,?,?,?,?,?,?,?,?,?,?) where username=?";
				int i = DaoMVC.updateUser(c,sql);
				
				if(i != 0)
				{
					session.setAttribute("fusername", fusername);
					session.setAttribute("lusername", lusername);
					session.setAttribute("address", address);
					session.setAttribute("nic", nic);
					session.setAttribute("gender", gender);
					session.setAttribute("dateofbirth", dateofbirth);
					session.setAttribute("email", email);
					session.setAttribute("phone",phone);
					session.setAttribute("accountnum", accountnum);
					session.setAttribute("amount", amount);
					session.setAttribute("username", username);
					session.setAttribute("password", password);
					
					request.setAttribute("msg", "User Updated succesfully");
					getServletContext().getRequestDispatcher("/HomePage.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("msg", "User not Updated");
					getServletContext().getRequestDispatcher("/HomePage.jsp").forward(request, response);
				}
				
				
	}

}
