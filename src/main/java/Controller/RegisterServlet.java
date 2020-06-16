package Controller;

import Dao.MemberDao;
import Model.Member;
import com.google.gson.Gson;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/member")
public class RegisterServlet extends HttpServlet {

    public RegisterServlet() {
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao memberDao = new MemberDao();
        String firstname= request.getParameter("fname");
        String lastname=request.getParameter("lname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Member member=new Member(firstname,lastname,email,password);
        String memberRegistered = memberDao.addMember(member);
       System.out.println(memberRegistered);
        if(memberRegistered.equals("SUCCESS"))
        {
           
            response.sendRedirect("/welcome.jsp");
        }
        else
        {
            response.sendRedirect("/register.jsp");
//            request.setAttribute("errMessage", memberRegistered);
//            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
