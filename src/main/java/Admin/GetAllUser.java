package Admin;

import Models.ListUser.ListUser;
import Services.ServiceUser;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(
        value = "/getAllUser"
)
public class GetAllUser  extends HttpServlet {
    ServiceUser serviceUser = new ServiceUser();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session1 = req.getSession(false);
        Integer idRole = (Integer) session1.getAttribute("idRole");
        if(idRole == null || idRole != 1){
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You do not have permission to access this page.");
        }
        HttpSession session =  req.getSession(true);
        ListUser items = serviceUser.getUsers();
        session.setAttribute("get_all_user",items);
        resp.sendRedirect("admin/manage-user.jsp");
    }
}
