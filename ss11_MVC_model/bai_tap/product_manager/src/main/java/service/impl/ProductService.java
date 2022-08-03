package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    static IProductRepository productReponsitory = new ProductRepository();
    @Override
    public List<Product> display() {
        return productReponsitory.display();
    }

    @Override
    public void add(int id , String name, double price, String describe, String producer) throws Exception{
        List<Product> list = display();
        boolean flag =true;
        for (Product p : list) {
            if (p.getId()==id){
                flag=false;
                throw new Exception("Id trùng lặp");
            }
        }
        if (flag){
            Product product = new Product(id,name,price,describe,producer);
            productReponsitory.add(product);
        }
    }

    @Override
    public String edit(int id,Product product) throws Exception{
        try{
            productReponsitory.edit(id, product);
            return "Cập nhật thành công!";
        }catch (Exception e){
            return "Dữ liệu chưa đúng format!";
        }
    }

    @Override
    public void delete(int id) {
        productReponsitory.delete(id);
    }

    @Override
    public Product findOfId(int id) {
        Product product = productReponsitory.findOfId(id);
        return product;
    }

    @Override
    public List<Product> findOfName(String name) {
        List<Product> product = productReponsitory.findOfName(name);
        return product;
    }
}
