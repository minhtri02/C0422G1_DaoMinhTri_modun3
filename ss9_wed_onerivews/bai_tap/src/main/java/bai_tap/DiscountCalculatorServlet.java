package bai_tap;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "discountCalculatorServlet", value = "/discount")
public class DiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        String description = request.getParameter("Description");
        double discountAmount = price * discount * 0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view.jsp");
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("description",description);
        request.setAttribute("discountPrice",discountPrice);
        request.setAttribute("price",price);
        requestDispatcher.forward(request,response);
    }
}
