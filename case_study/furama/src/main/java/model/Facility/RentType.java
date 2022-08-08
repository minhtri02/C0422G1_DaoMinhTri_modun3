package model.Facility;

public class RentType {
    int renTypeId;
    String nameRenType;

    public RentType() {
    }

    public RentType(String nameRenType) {
        this.nameRenType = nameRenType;
    }

    public RentType(int renTypeId, String nameRenType) {
        this.renTypeId = renTypeId;
        this.nameRenType = nameRenType;
    }

    public int getRenTypeId() {
        return renTypeId;
    }

    public void setRenTypeId(int renTypeId) {
        this.renTypeId = renTypeId;
    }

    public String getNameRenType() {
        return nameRenType;
    }

    public void setNameRenType(String nameRenType) {
        this.nameRenType = nameRenType;
    }
}
