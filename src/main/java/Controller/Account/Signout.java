package Controller.Account;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(
        value = "/sign_out"
)
public class Signout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.removeAttribute("userInfor"); // Xóa user info khỏi session
            session.invalidate(); // Hủy session
        }
        resp.sendRedirect("Account/clear_token.jsp");
    }
}