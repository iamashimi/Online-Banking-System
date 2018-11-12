package dao;

import java.util.ArrayList;

import model.Customer;

public interface ICustomer {

	public static final Customer customer = Customer.getCustomer(ICustomer.class.getName());
	
	public void addCustomer(Customer customer);
	
	public Customer getCustomerByName(String username);
	
	public ArrayList<Customer> addCustomer();
	
	public Customer updateDriver(String userName, Customer customer);
	
	public void removeCustomer(String userName);
	
}
