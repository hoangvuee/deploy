package Admin;

import Services.ServiceOrder;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(
        value = "/updateOrderStatus"
)
public class UpdateStatusOrder  extends HttpServlet {
    ServiceOrder serviceOrder = new ServiceOrder();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session1 = req.getSession(false);
        Integer idRole = (Integer) session1.getAttribute("idRole");
        if(idRole == null || idRole != 1){
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You do not have permission to access this page.");
        }
        int idOrder = Integer.parseInt(req.getParameter("idOrder"));
        int isActive = Integer.parseInt(req.getParameter("status"));
        serviceOrder.updateOrderStatus(idOrder,isActive);
        resp.sendRedirect("getOrderManage");
    }
}
