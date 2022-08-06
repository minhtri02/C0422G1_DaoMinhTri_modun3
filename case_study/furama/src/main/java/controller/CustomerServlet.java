package controller;

import model.Customer;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    static ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showListCustomer":
                showListCustomer(request, response);
                break;
            case "showAddCustomer":
                showAddCustomer(request, response);
                break;
            case "showEditCustomer":
                showEditCustomer(request,response);
            case "showFindByIdCustomer":
                showFindByIdCustomer(request,response);
                break;
        }
    }

    private void showFindByIdCustomer(HttpServletRequest request, HttpServletResponse response) {
        int idCustomer= Integer.parseInt(request.getParameter("idCustomer"));
        Customer customer = customerService.findByIdCustomer(idCustomer);
        request.setAttribute("customer",customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/");
    }

    private void showEditCustomer(HttpServletRequest request, HttpServletResponse response) {
        int idCustomer= Integer.parseInt(request.getParameter("idCustomer"));
        Customer customer = customerService.findByIdCustomer(idCustomer);
        request.setAttribute("customer",customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/editCustomer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/addCustomer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> list = customerService.displayCustomer();
        request.setAttribute("listCustomer",list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listCustomer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listCustomer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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

            case "AddCustomer":
                addCustomer(request, response);
                break;
            case "editCustomer":
                editCustomer(request,response);
                break;
            case "deleteCustomer":
                deleteCustomer(request,response);
                break;
            default:
                showListCustomer(request,response);
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int idFacility = Integer.parseInt(request.getParameter("idFacility"));
        int idCustomer = Integer.parseInt(request.getParameter("idCustomer"));
        String name = request.getParameter("name");
        String dayOfbirt = request.getParameter("dayOfBirt");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        customerService.editCustomer(idCustomer,idFacility,name,dayOfbirt,gender,idCard,phone,email,address);
        request.setAttribute("error","sửa thành công!");
        showEditCustomer(request,response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int idCustomer = Integer.parseInt(request.getParameter("idCustomer"));
        customerService.deleteCustomer(idCustomer);
        request.setAttribute("error","xoá thành công!");
        showListCustomer(request,response);
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        String idFacility = request.getParameter("idFacility");
        String name = request.getParameter("name");
        String dayOfbirt = request.getParameter("dayOfBirt");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(Integer.parseInt(idFacility),name,dayOfbirt,Integer.parseInt(gender),idCard,phone,email,address);
        customerService.addCustomer(customer);
        request.setAttribute("error","Thêm mới thành công!");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/addCustomer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
