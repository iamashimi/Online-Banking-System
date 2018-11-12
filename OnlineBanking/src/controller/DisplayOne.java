package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoMVC;
import model.Customer;

/**
 * Servlet implementation class DisplayOne
 */
@WebServlet("/DisplayOne")
public class DisplayOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
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
		
		//3. call a method in Dao class to insert data in table
		String sql="insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?)";
		int i = DaoMVC.registerUser(c,sql);
		
		if(i!=0){
			System.out.println("value inserted");
			request.setAttribute("msg", "Registration Succesful.....");
			getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
			
		}
		else{
			System.out.println("value not inserted");
		}
		
	}

}
