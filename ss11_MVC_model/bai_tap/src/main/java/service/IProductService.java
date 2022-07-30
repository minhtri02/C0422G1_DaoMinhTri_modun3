package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> display();
    void add(int id , String name, double price, String describe, String producer) throws Exception;
    String edit(int id,Product product) throws Exception;
    void delete(int id);
    Product findOfId(int id);
    Product findOfName(String name);
}
