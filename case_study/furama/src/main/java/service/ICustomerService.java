package service;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    void addCustomer(Customer customer);
    List<Customer> displayCustomer();
    void deleteCustomer(int idCustomer);
    Customer findByIdCustomer(int idCustomer);
    void editCustomer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address);
    List<CustomerType> displayCustomerType();
    Map<String, String> validate(Customer customer);
}
