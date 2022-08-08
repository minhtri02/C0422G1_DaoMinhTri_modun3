package repository.impl;

import model.Facility.RentType;
import model.Facility.Service;
import repository.IFacilityRepository;
import repository.connetion.Conn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    Conn conn = new Conn();
    private final String INSERT_INTO_SERVICE = "INSERT INTO furamA.DICH_Vu (TEN_DICH_vU, dIen_tich, chI_PhI_thue, sO_ngUOi_Toi_da, TieU_chUaN_PHONG, MO_TA_TiEN_NGHI_KHaC, dien_ticH_hO_boi, so_tAng, Dich_vu_mieN_phi_dI_kEM, MA_kIeU_THUE, mA_LOai_dIcH_VU) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private final String SELECT_ALL_SERVICE = "SELECT * FROM furama.dich_vu;";
    private final String SELECT_BY_ID_SERVICE = "select * from furama.dich_vu where ma_dich_vu = ?;";
    private final String SELECT_SERVICE_TYPE = "SELECT * FROM furama.loai_dich_vu;";
    private final String EDIT_SERVICE = "update furama.dich_vu set ten_dich_vu =?,dien_tich=?,chi_phi_thue=?,so_nguoi_toi_da = ?,tieu_chuan_phong =?,mo_ta_tien_nghi_khac = ?,dien_tich_ho_boi=?,so_tang =?,dich_vu_mien_phi_di_kem=?,ma_kieu_thue=?,ma_loai_dich_vu=? where ma_dich_vu =?;";
    private final String DELETE_SERVICE ="delete from furama.dich_vu where ma_dich_vu =?;";

    @Override
    public void addFacility(Service service) {
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_SERVICE)) {
            preparedStatement.setString(1, service.getNameFacility());
            preparedStatement.setInt(2, service.getArea());
            preparedStatement.setDouble(3, service.getCost());
            preparedStatement.setInt(4, service.getMaxPeoble());
            preparedStatement.setString(5, service.getStandardRoom());
            preparedStatement.setString(6, service.getDescriptionOtherConvenience());
            preparedStatement.setDouble(7, service.getPoolArea());
            preparedStatement.setInt(8, service.getNumberOfFloors());
            preparedStatement.setString(9, service.getFacilityFree());
            preparedStatement.setInt(10, service.getRentTypeId());
            preparedStatement.setInt(11, service.getFacilityTypeId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    @Override
    public List<Service> selectAllFacility() {
        List<Service> facilityList = new ArrayList<>();
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SERVICE)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idFacility = resultSet.getInt("ma_dich_vu");
                String nameFacility = resultSet.getString("ten_dich_vu");
                Integer area =null;
                Double cost =null;
                Integer maxPeople =null;
                Integer rentTypeId =null;
                Integer facilityTypeId =null;
                String standardRoom =null;
                String descriptionOtherConvenience =null;
                Double poolArea =null;
                Integer numberOfFloors =null;
                String facilityFree =null;

                if (nameFacility.contains("villa")) {
                    area = resultSet.getInt("dien_tich");
                    cost = resultSet.getDouble("chi_phi_thue");
                    maxPeople = resultSet.getInt("so_nguoi_toi_da");
                    rentTypeId = resultSet.getInt("ma_kieu_thue");
                    facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                    standardRoom = resultSet.getString("tieu_chuan_phong");
                    descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    poolArea = resultSet.getDouble("dien_tich_ho_boi");
                    numberOfFloors = resultSet.getInt("so_tang");
//                    Villa villa = new Villa(idFacility,nameFacility,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors);

                    facilityList.add(new Service(idFacility,nameFacility,area,cost,maxPeople,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,rentTypeId,facilityTypeId));
                } else if (nameFacility.contains("house")) {
                    area = resultSet.getInt("dien_tich");
                    cost = resultSet.getDouble("chi_phi_thue");
                    maxPeople = resultSet.getInt("so_nguoi_toi_da");
                    rentTypeId = resultSet.getInt("ma_kieu_thue");
                    facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                    standardRoom = resultSet.getString("tieu_chuan_phong");
                    descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    numberOfFloors = resultSet.getInt("so_tang");
//                    House house = new House(idFacility,nameFacility,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,descriptionOtherConvenience,numberOfFloors);
                    facilityList.add(new Service(idFacility,nameFacility,area,cost,maxPeople,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,rentTypeId,facilityTypeId));

                } else if (nameFacility.contains("room")){
                    area = resultSet.getInt("dien_tich");
                    cost = resultSet.getDouble("chi_phi_thue");
                    maxPeople = resultSet.getInt("so_nguoi_toi_da");
                    rentTypeId = resultSet.getInt("ma_kieu_thue");
                    standardRoom = resultSet.getString("tieu_chuan_phong");
                    descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    numberOfFloors = resultSet.getInt("so_tang");
                    facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                    facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                    facilityList.add(new Service(idFacility,nameFacility,area,cost,maxPeople,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,rentTypeId,facilityTypeId));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public Service findByID(int id) {
        Service service = null;
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID_SERVICE)) {
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();

            Double poolArea =null;
            Integer numberOfFloors =null;
            String facilityFree =null;

            while(resultSet.next()){
                String nameFacility = resultSet.getString("ten_dich_vu");
                Integer area = resultSet.getInt("dien_tich");
                Double cost = resultSet.getDouble("chi_phi_thue");
                Integer maxPeople = resultSet.getInt("so_nguoi_toi_da");
                Integer rentTypeId = resultSet.getInt("ma_kieu_thue");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                poolArea = resultSet.getDouble("dien_tich_ho_boi");
                numberOfFloors = resultSet.getInt("so_tang");
                facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                Integer facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                service = new Service(id,nameFacility,area,cost,maxPeople,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,rentTypeId,facilityTypeId);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return service;
    }

    @Override
    public List<RentType> listRentType() {
        List<RentType> list = new ArrayList<>();
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SERVICE_TYPE)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Integer renTypeId = resultSet.getInt(1);
                String nameRenType = resultSet.getString(2);
                list.add(new RentType(renTypeId,nameRenType));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public void editFacility(Service service) {
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(EDIT_SERVICE)) {
            preparedStatement.setString(1,service.getNameFacility());
            preparedStatement.setInt(2,service.getArea());
            preparedStatement.setDouble(3,service.getCost());
            preparedStatement.setInt(4,service.getMaxPeoble());
            preparedStatement.setString(5,service.getStandardRoom());
            preparedStatement.setString(6,service.getDescriptionOtherConvenience());
            preparedStatement.setDouble(7,service.getPoolArea());
            preparedStatement.setInt(8,service.getNumberOfFloors());
            preparedStatement.setString(9,service.getFacilityFree());
            preparedStatement.setInt(10,service.getRentTypeId());
            preparedStatement.setInt(11,service.getFacilityTypeId());
            preparedStatement.setInt(12,service.getIdFacility());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteFacility(int facilityID) {
        try (Connection connection = conn.getConnetion();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SERVICE)) {
            preparedStatement.setInt(1,facilityID);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
