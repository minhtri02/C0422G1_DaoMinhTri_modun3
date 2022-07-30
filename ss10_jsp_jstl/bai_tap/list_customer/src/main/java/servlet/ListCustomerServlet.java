package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListCustomerServlet", value = "/ListCustomerServlet")
public class ListCustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Thức","25-10-1998","Đà Nẵng abc", "/img/3.jpg"));
        customerList.add(new Customer("Tâm","25-10-1998","Đà Nẵng", "/img/4.jpg"));
        customerList.add(new Customer("Quỳnh","25-10-1998","Đà Nẵng", "/img/1.jpg"));
        customerList.add(new Customer("Thái","25-10-1998","Đà Nẵng", "/img/2.jpg"));
        customerList.add(new Customer("Tài","25-10-1998","Đà Nẵng", "/img/5.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/List_Customer.jsp");
        request.setAttribute("list",customerList);
        requestDispatcher.forward(request,response);

    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
