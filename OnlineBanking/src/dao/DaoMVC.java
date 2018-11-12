package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Customer;

public class DaoMVC {
	
	private static Connection connect() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/oop?useSSL=false" , "root", "root");
			System.out.println("Post establishing a DB connection");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}

	public static int registerUser(Customer c, String sql) {
		int i=0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, c.getFusername());
			ps.setString(2, c.getLusername());
			ps.setString(3, c.getAddress());
			ps.setString(4, c.getNic());
			ps.setString(5, c.getGender());
			ps.setString(6, c.getDateofbirth());
			ps.setString(7, c.getEmail());
			ps.setString(8, c.getPhone());
			ps.setString(9, c.getAccountnum());
			ps.setString(10, c.getAmount());
			ps.setString(11, c.getUsername());
			ps.setString(12, c.getPassword());
			
			i=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return i;
	}

	public static ResultSet LoginUser(Customer c, String sql) {
        ResultSet rs = null;
        Connection con = connect();
        try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(11, c.getUsername());
			ps.setString(12, c.getPassword());
			
			rs = ps.executeQuery();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
		return rs;
	}

	public static int updateUser(Customer c, String sql) {
    int i=0;
    
    Connection con = connect();
    
    try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, c.getFusername());
		ps.setString(2, c.getLusername());
		ps.setString(3, c.getAddress());
		ps.setString(4, c.getNic());
		ps.setString(5, c.getGender());
		ps.setString(6, c.getDateofbirth());
		ps.setString(7, c.getEmail());
		ps.setString(8, c.getPhone());
		ps.setString(9, c.getAccountnum());
		ps.setString(10, c.getAmount());
		ps.setString(11, c.getUsername());
		ps.setString(12, c.getPassword());
		ps.setString(13, c.getUsername());
		
		i = ps.executeUpdate();
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return i;
	}




}
