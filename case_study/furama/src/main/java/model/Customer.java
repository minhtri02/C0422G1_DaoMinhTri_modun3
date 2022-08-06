package model;

public class Customer {
    int idCustomer ;
    int idFacility;
    String name;
    String dayOfBirt;
    int gender;
    String idCard;
    String phone;
    String email;
    String address;


    public Customer() {
    }

    public Customer(int idCustomer, int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address) {
        this.idCustomer = idCustomer;
        this.idFacility = idFacility;
        this.name = name;
        this.dayOfBirt = dayOfBirt;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Customer(int idFacility, String name, String dayOfBirt, int gender, String idCard, String phone, String email, String address) {
        this.idFacility = idFacility;
        this.name = name;
        this.dayOfBirt = dayOfBirt;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdFacility() {
        return idFacility;
    }

    public void setIdFacility(int idFacility) {
        this.idFacility = idFacility;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirt() {
        return dayOfBirt;
    }

    public void setDayOfBirt(String dayOfBirt) {
        this.dayOfBirt = dayOfBirt;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
