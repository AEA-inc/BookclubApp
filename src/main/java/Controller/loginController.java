package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/login")
public class loginController extends HttpServlet {

   // MemberDao memberDao;

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        HttpSession session=request.getSession();
        if("Admin@gmail.com".equals(username) && "Admin".equals(password)){
            session.setAttribute("Username","Admin@gmail.com");
            session.setAttribute("password", "Admin");

            response.sendRedirect("Admin.jsp");
        }
        else {
            session.setAttribute("errrmsg", "invalid inputinvalid input");
            response.getWriter().print("invalid input");
            response.sendRedirect("loginForm.jsp");
        }

    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         doPost(req, resp);
    }
}
