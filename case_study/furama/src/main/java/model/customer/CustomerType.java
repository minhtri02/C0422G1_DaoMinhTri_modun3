package model.customer;

public class CustomerType {
    int customerTypeId;
    String nameCustomerType;

    public CustomerType() {
    }

    public CustomerType(int customerTypeId, String nameCustomerType) {
        this.customerTypeId = customerTypeId;
        this.nameCustomerType = nameCustomerType;
    }

    public CustomerType(String nameCustomerType) {
        this.nameCustomerType = nameCustomerType;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }

    public String getNameCustomerType() {
        return nameCustomerType;
    }

    public void setNameCustomerType(String nameCustomerType) {
        this.nameCustomerType = nameCustomerType;
    }
}
