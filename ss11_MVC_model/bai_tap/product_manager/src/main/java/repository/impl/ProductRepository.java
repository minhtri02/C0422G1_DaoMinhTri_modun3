package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Craven",14000,"co hai cho suc khoe","VN"));
        productList.add(new Product(2,"ngua",24000,"co hai cho suc khoe","VN"));
        productList.add(new Product(3,"555",34000,"co hai cho suc khoe","VN"));
        productList.add(new Product(4,"essel",24000,"co hai cho suc khoe","VN"));
        productList.add(new Product(5,"sai gon",14000,"co hai cho suc khoe","VN"));
        productList.add(new Product(6,"prince",8000,"co hai cho suc khoe","VN"));
    }


    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    public void edit(int id, Product product) {
        for (Product p : productList) {
            if (p.getId()==id){
                p.setName(product.getName());
                p.setPrice(product.getPrice());
                p.setDescribe(product.getDescribe());
                p.setProducer(product.getProducer());
            }
        }
    }


    public void delete(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id){
                productList.remove(productList.get(i));
            }
        }
    }


    public Product findOfId(int id) {
        for (Product p: productList) {
            if (p.getId()==id){
                return p;
            }
        }
        return null;
    }


    public List<Product> findOfName(String name) {
        List<Product> products = new ArrayList<>();
        for (Product p: productList) {
            if (p.getName().contains(name)){
                products.add(p);
            }
        }
        return products;
    }
}
