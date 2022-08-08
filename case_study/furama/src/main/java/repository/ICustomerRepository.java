package repository;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;

public interface ICustomerRepository {
    void addCustomer(Customer customer);
    List<Customer> displayCustomer();
    void deleteCustomer(int idCustomer);
    Customer findByIdCustomer(int idCustomer);
    void editCustomer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address);
    List<CustomerType> displayCustomerType();
}
