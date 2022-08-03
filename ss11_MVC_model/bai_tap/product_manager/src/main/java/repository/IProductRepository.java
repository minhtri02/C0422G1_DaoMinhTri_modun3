package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
     List<Product> display();
    void add(Product product);
    void edit(int id,Product product);
    void delete(int id);
    Product findOfId(int id);
    List<Product> findOfName(String name);
}
