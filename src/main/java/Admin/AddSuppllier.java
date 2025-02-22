package Admin;

import Services.ServiceAddSupplier;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(
value = "/addSupplier"
        )
public class AddSuppllier extends HttpServlet {
    ServiceAddSupplier addSupplier = new ServiceAddSupplier();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Integer idRole = (Integer) session.getAttribute("idRole");
        if (idRole == null || idRole != 1) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "You do not have permission to access this page.");
            return;
        }

        String supplierName = req.getParameter("supplierName");
        String contactInfo = req.getParameter("contactInfo");
        String address = req.getParameter("address");
        int isActive = Integer.parseInt(req.getParameter("isActive"));

        try {
            boolean success = addSupplier.addSupplier(supplierName, contactInfo, address, isActive);
            if (success) {
                req.setAttribute("message", "Supplier added successfully!");  // Thiết lập thông báo thành công
            } else {
                req.setAttribute("message", "Failed to add supplier.");
            }
            req.getRequestDispatcher("admin/addSupplier.jsp").forward(req, resp);  // Chuyển hướng đến JSP
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
