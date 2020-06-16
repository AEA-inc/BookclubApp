package Model;

public class Checkout {
    Member user;
    int isbn;
    String title;
    String author;
    double price;

    public Checkout() {
        super();
    }

    public Checkout(Member user, int isbn, String title, String author, double price) {
        this.user = user;
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public int getIsbn() {
        return isbn;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public double getPrice() {
        return price;
    }
}
