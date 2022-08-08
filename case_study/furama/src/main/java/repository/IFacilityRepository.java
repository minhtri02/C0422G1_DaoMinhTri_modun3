package repository;

import model.Facility.RentType;
import model.Facility.Service;

import java.util.List;

public interface IFacilityRepository {
    void addFacility(Service facility);
    List<Service> selectAllFacility();
    Service findByID(int id);
    List<RentType> listRentType();
    void editFacility(Service service);
    void deleteFacility(int facilityID);
}
