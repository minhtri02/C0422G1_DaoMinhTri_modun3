package service.impl;

import model.Facility.RentType;
import model.Facility.Service;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {


    IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public void addFacility(Service facility) {

    }

    @Override
    public List<Service> selectAllService() {
        return facilityRepository.selectAllFacility();
    }

    @Override
    public Service findByID(int id) {
        return facilityRepository.findByID(id);
    }

    @Override
    public List<RentType> listRentType() {
        return facilityRepository.listRentType();
    }

    @Override
    public void editFacility(Service service) {
        facilityRepository.editFacility(service);
    }
}
