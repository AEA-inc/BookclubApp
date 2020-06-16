package Dao;

import Model.Book;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class BookDao {
    HashMap<String, Book> bookHashMap = new HashMap();

    public void addBook(Book book) {

        bookHashMap.put(book.getIsbn(), book);
    }

        public List<Book> getAllBooks(){
            return new ArrayList<>(bookHashMap.values());
        }
    }

