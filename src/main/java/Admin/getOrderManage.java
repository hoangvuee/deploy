package Admin;

import Models.OrderManage.ListOrder;
import Services.ServiceOrder;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(
        value = "/getOrderManage"
)
public class getOrderManage  extends HttpServlet {
    ServiceOrder serviceOrder = new ServiceOrder();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session1 = req.getSession(false);
        Integer idRole = (Integer) session1.getAttribute("idRole");
        if(idRole == null || idRole != 1){
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You do not have permission to access this page.");
        }
        ListOrder items ;
        HttpSession session = req.getSession(true);


            try {
                items = serviceOrder.getAllOrders();
                System.out.println(items.getItems().size());
                session.setAttribute("order_manage",items);
                resp.sendRedirect("admin/manage-order.jsp");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }




    }
}
