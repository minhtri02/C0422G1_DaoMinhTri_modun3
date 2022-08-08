package controller;

import model.Facility.RentType;
import model.Facility.Service;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FuramaServlet", urlPatterns ={"/facility",""} )
public class FacilityServlet extends HttpServlet {
    static private IFacilityService facilityService = new FacilityService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "showAddService":
                showAddService(request, response);
                break;
            case "showListService":
                showListService(request, response);
                break;
            case "showEditService":
                showEditService(request, response);
                break;
            case "add":
                break;
            default:
                showHome(request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "deleteFacility":
                deleteFacility(request,response);
                break;
            case "addService":
                addService(request, response);
                break;
            case "editFacility":
                editFacility(request,response);
            case "listService":
                listService(request,response);
                break;
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int facilityID = Integer.parseInt(request.getParameter("idFacility"));
        facilityService.deleteFacilityID(facilityID);
        request.setAttribute("error","xoá thành công!");
        showListService(request,response);
    }


    private void showEditService(HttpServletRequest request, HttpServletResponse response) {
        int idFacility= Integer.parseInt(request.getParameter("idFacility"));
        Service service = facilityService.findByID(idFacility);
        List<RentType> rentType = facilityService.listRentType();
        request.setAttribute("facility",service);
        request.setAttribute("listRentType",rentType);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/editService.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showAddService(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/addService.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListService(HttpServletRequest request, HttpServletResponse response) {
        List<Service> listFacility = facilityService.selectAllService();
//        request.setAttribute("listService",listFacility);
        request.setAttribute("list",listFacility);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/listService.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/home.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    private void editFacility(HttpServletRequest request, HttpServletResponse response) {
        int idFacility = Integer.parseInt(request.getParameter("idFacility"));
        String nameFacility = request.getParameter("nameFacility");
        int renTypeId = Integer.parseInt(request.getParameter("renTypeId"));
        Integer area = Integer.parseInt(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer maxPeoble = Integer.parseInt(request.getParameter("maxPeoble"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
        Double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        Integer numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        String facilityFree = request.getParameter("facilityFree");
        Integer facilityTypeId = Integer.valueOf(request.getParameter("facilityTypeId"));
        Service service = new Service(idFacility,nameFacility,area,cost,maxPeoble,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,renTypeId,facilityTypeId);
        facilityService.editFacility(service);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/editService.jsp");
        request.setAttribute("error","thành công");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listService(HttpServletRequest request, HttpServletResponse response) {
        List<Service> listService = facilityService.selectAllService();
        request.setAttribute("listService",listService);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/listService.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addService(HttpServletRequest request, HttpServletResponse response) {
        String nameFacility = request.getParameter("nameService");
        Integer area = Integer.parseInt(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer maxPeoble = Integer.parseInt(request.getParameter("maxPeoble"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
        Double poolArea=null;
        Integer numberOfFloors=null;
        String facilityFree = null;
        Service service = null;
        Integer renTypeId = Integer.parseInt(request.getParameter("renTypeId"));
        Integer facilityTypeId = Integer.valueOf(request.getParameter("serviceTypeId"));
        if (nameFacility.contains("villa")){
             poolArea = Double.parseDouble(request.getParameter("poolArea"));
             numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
             service = new Service(nameFacility,area,cost,maxPeoble,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,renTypeId,facilityTypeId);

        }else if (nameFacility.contains("house")){
            numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
             service = new Service(nameFacility,area,cost,maxPeoble,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,renTypeId,facilityTypeId);

        }else if (nameFacility.contains("room")){
            facilityFree = request.getParameter("facilityFree");
             service = new Service(nameFacility,area,cost,maxPeoble,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,renTypeId,facilityTypeId);
        }
        facilityService.addFacility(service);
        request.setAttribute("error","thành công!");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/addService.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}