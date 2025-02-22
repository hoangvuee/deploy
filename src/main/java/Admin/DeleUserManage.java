package Admin;

import Services.ServiceUser;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(
        value = "/delete_user"
)
public class DeleUserManage extends HttpServlet {
    ServiceUser serviceUser = new ServiceUser();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Integer idRole = (Integer) session.getAttribute("idRole");
        if(idRole == null || idRole != 1){
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You do not have permission to access this page.");
        }
        int idUser = Integer.parseInt(req.getParameter("idUser"));
        if (serviceUser.deleteUser(idUser)){
            resp.sendRedirect("getAllUser");
        }

    }
}
