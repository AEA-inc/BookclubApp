package Controller;

import Dao.CheckoutDao;
import Model.Checkout;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {
    private CheckoutDao dao;
    Gson mapper = new Gson();

    @Override
    public void init() throws ServletException {
        dao = new CheckoutDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String jsonString = req.getParameter("memberCheckout");
        Checkout checkout = mapper.fromJson(req.getParameter("memberCheckout"), Checkout.class);
        dao.addProduct(checkout);
        out.print(mapper.toJson(checkout));

    }
}
