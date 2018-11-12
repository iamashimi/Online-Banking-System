package model;

import java.sql.*;

public class Update {

	public Connection con;
	PreparedStatement ps;


	private int query;

	public int updateName(String newaddress, String newdateofbirth, String newemail, String newphone, String newusername, String newpassword) throws ClassNotFoundException,SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/oop?useSSL=false" , "root", "root");

		try {
			PreparedStatement ps=con.prepareStatement("UPDATE customer SET Address=?,DOB=?,Email=? PhoneNo=? UserName=? Password=?" + "WHERE UserName=?") ;
            
            ps.setString(3, newaddress);
            ps.setString(6, newdateofbirth);
            ps.setString(7, newemail);
            ps.setString(8, newphone);
            ps.setString(11, newusername);
            ps.setString(12, newpassword);
            //int i;
            query = ps.executeUpdate();
           
		} catch (Exception e) {
			System.out.println(e);
		}

		return query;
	}

	



}
