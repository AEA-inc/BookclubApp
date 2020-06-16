package Dao;

import Model.Book;
import com.google.gson.internal.bind.util.ISO8601Utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class BookDao {
    HashMap<String, Book> bookHashMap = new HashMap();
    {
      bookHashMap.put("1", new Book("1","jjfjf", "jfjfjf", 677));
        bookHashMap.put("2", new Book("2","ttt", "jfjfjf", 677));

    }

    public void addBook(Book book) {

        bookHashMap.put(book.getIsbn(), book);
       System.out.print("i did it ");

    }

        public List<Book> getAllBooks(){
////        Book book1=new Book("1","jjfjf", "jfjfjf", 677);
//        List<Book> books=new ArrayList<>();
//            books.add(book1);
//        return books;
           return new ArrayList<>(bookHashMap.values());
        }
    }


