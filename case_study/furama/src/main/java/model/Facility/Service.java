package model.Facility;

public class Service {
    int idFacility;
    String nameFacility;
    Integer area;
    Double cost;
    Integer maxPeoble;
    String standardRoom;
    String descriptionOtherConvenience;
    Double poolArea;
    Integer numberOfFloors;
    String facilityFree;
    Integer rentTypeId;
    Integer facilityTypeId;

    public Service() {
    }

    public Service(int idFacility, String nameFacility, Integer area, Double cost, Integer maxPeoble, String standardRoom, String descriptionOtherConvenience, Double poolArea, Integer numberOfFloors, String facilityFree, Integer rentTypeId, Integer facilityTypeId) {
        this.idFacility = idFacility;
        this.nameFacility = nameFacility;
        this.area = area;
        this.cost = cost;
        this.maxPeoble = maxPeoble;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
    }

    public Service(String nameFacility, Integer area, Double cost, Integer maxPeoble, String standardRoom, String descriptionOtherConvenience, Double poolArea, Integer numberOfFloors, String facilityFree, Integer rentTypeId, Integer facilityTypeId) {
        this.nameFacility = nameFacility;
        this.area = area;
        this.cost = cost;
        this.maxPeoble = maxPeoble;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
    }

    public int getIdFacility() {
        return idFacility;
    }

    public void setIdFacility(int idFacility) {
        this.idFacility = idFacility;
    }

    public String getNameFacility() {
        return nameFacility;
    }

    public void setNameFacility(String nameFacility) {
        this.nameFacility = nameFacility;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Integer getMaxPeoble() {
        return maxPeoble;
    }

    public void setMaxPeoble(Integer maxPeoble) {
        this.maxPeoble = maxPeoble;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOtherConvenience() {
        return descriptionOtherConvenience;
    }

    public void setDescriptionOtherConvenience(String descriptionOtherConvenience) {
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public Double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(Double poolArea) {
        this.poolArea = poolArea;
    }

    public Integer getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(Integer numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }

    public Integer getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(Integer rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public Integer getFacilityTypeId() {
        return facilityTypeId;
    }

    public void setFacilityTypeId(Integer facilityTypeId) {
        this.facilityTypeId = facilityTypeId;
    }
}
