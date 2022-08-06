package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    void addCustomer(Customer customer);
    List<Customer> displayCustomer();
    void deleteCustomer(int idCustomer);
    Customer findByIdCustomer(int idCustomer);
    void editCustomer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address);
}
