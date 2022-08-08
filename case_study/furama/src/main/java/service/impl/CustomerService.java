package service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public Map<String, String> validate(Customer customer) {
        Map<String, String> mapErrors = new HashMap<>();
        if (!customer.getName().isEmpty()) {
            if (!customer.getName().matches("^[A-Z][a-z]+( [A-Z][a-z]*)+$")) {
                mapErrors.put("name", "Please input right format!");
            }
        }else {
            mapErrors.put("name", "Please input name!");
        }

        if (!customer.getPhone().isEmpty()) {
            if (!customer.getPhone().matches("^(090|091|\\(84\\)\\+90|\\(84\\)\\+91)[0-9]{7}$")) {
                mapErrors.put("phone", "Please input right format!");
            }
        } else {
            mapErrors.put("phone", "Please input phone!");
        }

        if (!customer.getEmail().isEmpty()) {
            if (!customer.getEmail().matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
                mapErrors.put("email", "Please input right format!");
            }
        } else {
            mapErrors.put("email", "Please input email!");
        }

        if (!customer.getIdCard().isEmpty()) {
            if (!customer.getIdCard().matches("^[0-9]{9}$")) {
                mapErrors.put("idCard", "Please input right format!");
            }
        } else {
            mapErrors.put("idCard", "Please input personal code!");
        }

        return mapErrors;
    }

}
