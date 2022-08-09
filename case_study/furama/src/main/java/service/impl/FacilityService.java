package service.impl;

import model.Facility.RentType;
import model.Facility.Service;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class FacilityService implements IFacilityService {


    IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public void addFacility(Service service) {
        facilityRepository.addFacility(service);
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

    @Override
    public void deleteFacilityID(int facilityID) {
        facilityRepository.deleteFacility(facilityID);
    }

    @Override
    public Map<String, String> validate(Service service) {
        Map<String, String> mapError = new HashMap<>();
        if (!service.getNameFacility().isEmpty()) {
            if (!service.getNameFacility().matches("^[A-Z][a-z]+( [A-Z][a-z]*)+$")) {
                mapError.put("name", "Please input right format!");
            }
        }else {
            mapError.put("name", "Please input name!");
        }

        if (!service.getCost().isNaN()){
            if (service.getCost()<0){
                mapError.put("cost", "Please input right format!");
            }
        }else {
            mapError.put("cost", "Please input cost!");
        }

        if (!(service.getArea() ==null)){
            if (service.getArea()<0){
                mapError.put("area", "Please input right format!");
            }
        }else {
            mapError.put("area", "Please input cost!");
        }

        if (!(service.getNumberOfFloors() ==null)){
            if (service.getArea()<0){
                mapError.put("floors", "Please input right format!");
            }
        }else {
            mapError.put("floors", "Please input cost!");
        }

        if (!(service.getMaxPeoble() ==null)){
            if (service.getMaxPeoble()<0){
                mapError.put("people", "Please input right format!");
            }
        }else {
            mapError.put("people", "Please input max people!");
        }



        return mapError;
    }
}
