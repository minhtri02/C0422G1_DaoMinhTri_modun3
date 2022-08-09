package service;

import model.Facility.RentType;
import model.Facility.Service;
import model.customer.Customer;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    void addFacility(Service facility);
    List<Service> selectAllService();
    Service findByID(int id);
    List<RentType> listRentType();
    void editFacility(Service service);
    void deleteFacilityID(int facilityID);
    public Map<String, String> validate(Service service);
}
