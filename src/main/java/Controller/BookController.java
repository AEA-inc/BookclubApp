package Controller;

import Dao.BookDao;
import Model.Book;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "book", urlPatterns = "/book")
public class BookController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookDao bookDao;
    Gson map = new Gson();

    @Override
    public void init() throws ServletException {
        bookDao=new BookDao();

    }

    @Override
    protected void doGet(final HttpServletRequest req,final HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("books", bookDao.getAllBooks());
        req.getRequestDispatcher("addBook.jsp").forward(req, resp);
//        String ttl=req.getParameter("book_title");
//        String isn=req.getParameter("isbn");
//        String Author=req.getParameter("author");
//        double prc=Double.valueOf(req.getParameter("price"));
//
//        Book book=new Book();
//        book.setAuthor(Author);
//        book.setBookTitle(ttl);
//        book.setIsbn(isn);
//        book.setPrice(prc);
//        bookDao.addBook(book);
//        req.setAttribute("books", bookDao.getAllBooks());
//       RequestDispatcher view = req.getRequestDispatcher("addBook.jsp");
//        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String ttl=req.getParameter("book_title");
//        String isn=req.getParameter("isbn");
//        String Author=req.getParameter("author");
//        double prc=Double.valueOf(req.getParameter("price"));
//
//        Book book=new Book();
//        book.setAuthor(Author);
//        book.setBookTitle(ttl);
//        book.setIsbn(isn);
//        book.setPrice(prc);
//        bookDao.addBook(book);

       HttpSession ss=req.getSession();
        String jsonSting = req.getParameter("book");
        Book book1 = map.fromJson(req.getParameter("book"), Book.class);

        bookDao.addBook(book1);

        PrintWriter out = resp.getWriter();

        out.print(map.toJson(book1));
    }
}
