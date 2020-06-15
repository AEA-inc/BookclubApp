package Controller;

import Dao.MemberDao;
import Model.Member;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    public RegisterServlet() {
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao memberDao = new MemberDao();
        Gson mapper = new Gson();
        String jsonSting = request.getParameter("member");
       System.out.println("here servlet");
        Member member = mapper.fromJson(request.getParameter("jsonPostRequest"), Member.class);
        memberDao.addMember(member);
        PrintWriter out = response.getWriter();
        out.print(mapper.toJson(member));
//        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
//        boolean memberRegistered = memberDao.addMember(member);
//        System.out.println(memberRegistered);
//        if(memberRegistered==true){
//            request.getRequestDispatcher("member.jsp").forward(request, response);
//        }
//        else   //On Failure, display a meaningful message to the User.
//        {
//            request.setAttribute("errMessage", memberRegistered);
//            request.getRequestDispatcher("register.jsp").forward(request, response);
//        }
    }
}
