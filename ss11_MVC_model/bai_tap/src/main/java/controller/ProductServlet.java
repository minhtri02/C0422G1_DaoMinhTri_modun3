package controller;

import model.Product;
import service.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"/Product",""})
public class ProductServlet extends HttpServlet {
    static ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action =request.getParameter("action");
        if (action == null){
            action="";
        }

        switch (action){
            case "add":
                showCreateProduct(request,response);
                break;
            case "edit":
                showEditProduct(request,response);
                break;
            case "delete":
                showDeleteProduct(request,response);
                break;
            case "findOfId":
                showProductById(request,response);
                break;
            case "findOfName":
                showFindOfName(request,response);
                break;
            default:
                listProduct(request,response);
        }
    }

    private void showFindOfName(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/FindByName.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showProductById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findOfId(id);
        request.setAttribute("product",product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/FindById.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteProduct(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/deleteProduct.jsp");
        int id= Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id",id);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showEditProduct(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editProduct.jsp");
        int id= Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id",id);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/addProduct.jsp");

        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.display();
        request.setAttribute("productList",productList);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list_product.jsp");
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
        request.setCharacterEncoding("UTF-8");
        String action =request.getParameter("action");
        if (action == null){
            action="";
        }

        switch (action){
            case "add":
                createProduct(request,response);
                break;
            case "edit":
                editProduct(request,response);
                break;
            case "delete":
                deleteProduct(request,response);
                break;
            case "findOfName":
                findOfNameProduct(request,response);
                break;
            default:
                listProduct(request,response);
        }
    }

    private void findOfNameProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        Product product=productService.findOfName(name);
        List<Product> productList = productService.display();
        request.setAttribute("productList",productList);
        if (product == null){
            String error = "Không có sản phẩm tên này";
            request.setAttribute("error",error);
        }else{
            request.setAttribute("product",product);
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list_product.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        String flag = request.getParameter("deleteResutl");
        int id =0;
        try{
             id = Integer.parseInt(request.getParameter("id"));
        }catch (Exception e){
            listProduct(request,response);
        }
        if (flag.equals("yes")){
            productService.delete(id);
            listProduct(request,response);
        }else if (flag.equals("no")){
            listProduct(request,response);
        }else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/deleteProduct.jsp");
            request.setAttribute("id",id);
            request.setAttribute("resutl","Bạn phải nhập yes or no");
            try {
                requestDispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String describe = request.getParameter("describe");
        String producer= request.getParameter("producer");
        String kq ;

        try {
            kq=productService.edit(id,new Product(id,name,price,describe,producer));
        } catch (Exception e) {
            kq = "sai format";
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/editProduct.jsp");
        request.setAttribute("kq",kq);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String describe = request.getParameter("describe");
        String producer = request.getParameter("producer");
        String kq ;
        try {
            productService.add(id,name,price,describe,producer);
            kq = "Thêm mới thành công";
        } catch (Exception e) {
            kq = e.getMessage();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/addProduct.jsp");
        request.setAttribute("resutl",kq);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
