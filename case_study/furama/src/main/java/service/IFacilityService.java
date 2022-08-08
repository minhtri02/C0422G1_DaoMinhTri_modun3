package service;

import model.Facility.RentType;
import model.Facility.Service;

import java.util.List;

public interface IFacilityService {
    void addFacility(Service facility);
    List<Service> selectAllService();
    Service findByID(int id);
    List<RentType> listRentType();
    void editFacility(Service service);
}
