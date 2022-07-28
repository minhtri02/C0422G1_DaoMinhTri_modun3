package model;

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
        customerList.add(new Customer("Trí","25-10-1998","Đà Nẵng","https://files.slack.com/files-pri/TEBPXS5HQ-F03RBQL37RQ/20220728_133027.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/List_Customer");
        request.setAttribute("list",customerList);
        requestDispatcher.forward(request,response);
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
