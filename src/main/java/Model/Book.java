package Model;

public class Book {
    private String isbn;
    private String bookTitle;
    private String author;
    private double price;

    public Book() {
        super();
    }

    public Book(String isbn, String bookTitle, String author, double price) {
        super();
        this.isbn= isbn;
        this.bookTitle = bookTitle;
        this.author = author;
        this.price = price;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
