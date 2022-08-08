package service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {

    static ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public void addCustomer(Customer customer) {
        customerRepository.addCustomer(customer);
    }

    @Override
    public List<Customer> displayCustomer() {
        return customerRepository.displayCustomer();
    }

    @Override
    public void deleteCustomer(int idCustomer) {
        customerRepository.deleteCustomer(idCustomer);
    }

    @Override
    public Customer findByIdCustomer(int idCustomer) {
        return customerRepository.findByIdCustomer(idCustomer);
    }

    @Override
    public void editCustomer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address) {
        customerRepository.editCustomer(idCustomer,idFacility,name,dayOfBirt,gender,idCard,phone,email,address);
    }

    @Override
    public List<CustomerType> displayCustomerType() {
        return customerRepository.displayCustomerType();
    }

}
