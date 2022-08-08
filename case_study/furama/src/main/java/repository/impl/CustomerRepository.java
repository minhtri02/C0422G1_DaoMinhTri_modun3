package repository.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.ICustomerRepository;
import repository.connetion.Conn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    static Conn connetion = new Conn();
    private String SELECT_ALL = "select * from khach_hang;";
    private String ADD_CUSTOMER = " INSERT INTO khach_hanG ( MA_loai_khaCH, Ho_tEn, ngay_sinh, giOi_tInh, sO_CMND, so_Dien_thoaI, EMAIL, DIa_chi) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);";
    private String DELETE_CUSTOMER = "delete from khach_hang where ma_khach_hang = ?;";
    private String FIND_BY_ID_CUSTOMER ="select * from khach_hang where ma_khach_hang =?;";
    private String EDIT_CUSTOMER=" update khach_hang set ma_loai_khach =? ,ho_ten=?,ngay_sinh = ? , gioi_tinh =?,so_cmnd =?,so_dien_thoai =?,email=?,dia_chi=? where ma_khach_hang =?;";
    private String SELECT_CUSTOMER_TYPE = "SELECT * FROM furama.loai_khach;";

    @Override
    public void addCustomer(Customer customer) {
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(ADD_CUSTOMER);) {
            preparedStatement.setInt(1, (customer.getIdFacility()));
            preparedStatement.setString(2, (customer.getName()));
            preparedStatement.setString(3, (customer.getDayOfBirt()));
            preparedStatement.setInt(4, (customer.getGender()));
            preparedStatement.setString(5, (customer.getIdCard()));
            preparedStatement.setString(6, (customer.getPhone()));
            preparedStatement.setString(7, (customer.getEmail()));
            preparedStatement.setString(8, (customer.getAddress()));
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Customer> displayCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String idCustomer = resultSet.getString("ma_khach_hang");
                String idFacility = resultSet.getString("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String dateOfbirt = resultSet.getString("ngay_sinh");
                String gender = resultSet.getString("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customerList.add(new Customer(Integer.parseInt(idCustomer), Integer.parseInt(idFacility), name, dateOfbirt, Integer.parseInt(gender), idCard, phone, email, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void deleteCustomer(int idCustomer) {
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER)) {
            preparedStatement.setInt(1,idCustomer);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Customer findByIdCustomer(int idCustomer) {
        Customer customer = null;
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID_CUSTOMER)) {
            preparedStatement.setInt(1,idCustomer);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String idFacility = resultSet.getString("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String dateOfbirt = resultSet.getString("ngay_sinh");
                String gender = resultSet.getString("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customer=new Customer(idCustomer, Integer.parseInt(idFacility), name, dateOfbirt, Integer.parseInt(gender), idCard, phone, email, address);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return customer;
    }

    @Override
    public void editCustomer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address) {
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER)) {
            preparedStatement.setInt(1, idFacility);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, dayOfBirt);
            preparedStatement.setInt(4, gender);
            preparedStatement.setString(5, idCard);
            preparedStatement.setString(6, phone);
            preparedStatement.setString(7, email);
            preparedStatement.setString(8, address);
            preparedStatement.setInt(9, idCustomer);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<CustomerType> displayCustomerType() {
        List<CustomerType> typeList = new ArrayList<>();
        try (Connection connection = connetion.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_TYPE)) {
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerTypeId = Integer.parseInt(resultSet.getString(1));
                String nameTypeCustomer = resultSet.getString(2);
                typeList.add(new CustomerType(customerTypeId,nameTypeCustomer));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return typeList;
    }
}
