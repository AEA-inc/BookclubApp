package Dao;
import Model.Book;
import Model.Checkout;
import Model.Member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CheckoutDao {
    Member memb = new Member();
    Map<Integer, Checkout> productsDB = new HashMap<>();
    {
        productsDB.put(1, new Checkout(memb,1,"book1","aut1",200.0));
    }
    public void addProduct(Checkout checkout) {
        productsDB.put(checkout.getIsbn(), checkout);
    }
    public void deleteProduct(int productIsbn){
        productsDB.remove(productIsbn);
    }

    public void updateProduct(Checkout checkout){
        productsDB.put(checkout.getIsbn(), checkout);
    }

    public List<Checkout> getAllProducts() {
        return new ArrayList<>(productsDB.values());
    }

}
