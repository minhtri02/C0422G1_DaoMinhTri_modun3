package reponsitory;

import model.Product;
import service.ProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductReponsitory {
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Craven",14000,"co hai cho suc khoe","VN"));
        productList.add(new Product(2,"ngua",24000,"co hai cho suc khoe","VN"));
        productList.add(new Product(3,"555",34000,"co hai cho suc khoe","VN"));
        productList.add(new Product(4,"essel",24000,"co hai cho suc khoe","VN"));
        productList.add(new Product(5,"sai gon",14000,"co hai cho suc khoe","VN"));
        productList.add(new Product(6,"print",8000,"co hai cho suc khoe","VN"));
    }
    public static List<Product> display() {
        return productList;
    }


    public static void add(Product product) {
        productList.add(product);

    }


    public void edit(int id,Product product) {
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
        for (Product p: productList) {
            if (p.getId()==id){
                productList.remove(p);
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


    public Product findOfName(String name) {
        for (Product p: productList) {
            if (p.getName().equals(name)){
                return p;
            }
        }
        return null;
    }
}
