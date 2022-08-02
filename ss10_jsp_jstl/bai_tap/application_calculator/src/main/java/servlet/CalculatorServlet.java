package servlet;

import exception.UseException;
import Service.CalculatorService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double first = Double.parseDouble(request.getParameter("firstOperand"));
        double second = Double.parseDouble(request.getParameter("secondOperand"));
        String operator = request.getParameter("selectOperator");
        String resufl="";
        try {
             resufl =  CalculatorService.calculator(first,second,operator);
        } catch (UseException e) {
            e.printStackTrace();
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/ResuflCalculator.jsp");
        request.setAttribute("resufl",resufl);
        requestDispatcher.forward(request,response);
    }
}
