package Controller;

import Services.ServiceFeedback;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/feedbacks")
public class ControllerFeedback extends HttpServlet {
    private ServiceFeedback serviceFeedback = new ServiceFeedback();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("có vào from khong");
        // Lấy thông tin từ form
        String productId = req.getParameter("productId");
        String orderId = req.getParameter("orderId");
        String status = req.getParameter("status");
        String comment = req.getParameter("comment");
        String stars = req.getParameter("stars");
        System.out.println("Product ID: " + productId);
        System.out.println("Order ID: " + orderId);
        System.out.println("Status: " + status);
        System.out.println("Comment: " + comment);
        System.out.println("Stars: " + stars);

        try {
            int idOrderDetail = serviceFeedback.getIdOrderDetails(orderId, productId);
            serviceFeedback.insertReview(comment, idOrderDetail, Integer.parseInt(stars), status);

            // Chuyển hướng về history.jsp với thông báo thành công
            resp.sendRedirect("history.jsp?success=true");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("history.jsp?success=false");
        }
    }
}
