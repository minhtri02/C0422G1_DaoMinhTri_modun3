package model;

public class Customer {
    private String name;
    private String birtDay;
    private String address;
    private String img;

    public Customer(String name, String birtDay, String address, String img) {
        this.name = name;
        this.birtDay = birtDay;
        this.address = address;
        this.img = img;
    }

    public Customer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirtDay() {
        return birtDay;
    }

    public void setBirtDay(String birtDay) {
        this.birtDay = birtDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
