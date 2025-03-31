package Dao;

import Models.Feedback.Feedback;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDao {
    ConnDB con = new ConnDB();
    public List<Feedback> getFeedbacksByProductId(int productId) {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT f.comment, f.create_date, f.rating_rank, f.status, " +
                "od.nameProduct, u.userName, u.birthDate, u.phoneNumber " +
                "FROM feedbacks f " +
                "LEFT JOIN order_details od ON od.id = f.id_order_detail " +
                "INNER JOIN orders ON orders.id = od.idOrder " +
                "INNER JOIN users u ON u.id = orders.idUser " +
                "LEFT JOIN products p ON p.id = od.idProduct " +
                "WHERE p.id = ?";

        try (Connection conn = con.getConn();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, productId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setComment(rs.getString("comment"));
                feedback.setCreateDate(rs.getDate("create_date"));
                feedback.setRatingRank(rs.getInt("rating_rank"));
                feedback.setStatus(rs.getString("status"));
                feedback.setNameProduct(rs.getString("nameProduct"));
                feedback.setUserName(rs.getString("userName"));
                feedback.setBirthDate(rs.getDate("birthDate"));
                feedback.setPhoneNumber(rs.getString("phoneNumber"));
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackList;
    }
    public int getIdOrderDetails(String idOrder, String idProduct) {
        String sql = "SELECT order_details.id " +
                "FROM order_details " +
                "INNER JOIN orders ON orders.id = order_details.idOrder " +
                "WHERE orders.id = ? AND order_details.idProduct = ?;";

        int id = -1; // Default value to indicate no result
        try (Connection conn = con.getConn();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, idOrder);
            stmt.setString(2, idProduct);

            try (ResultSet rs = stmt.executeQuery()) {
                // Kiểm tra nếu có kết quả trả về
                if (rs.next()) {
                    id = rs.getInt(1); // Lấy giá trị từ cột đầu tiên
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
    public void insertReview(String comment,  int idOrderDetail, int ratingRank, String status) {
        String sql = "INSERT INTO feedbacks (comment, create_date, id_order_detail, rating_rank, status) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = con.getConn();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, comment);
            stmt.setDate(2, new java.sql.Date(System.currentTimeMillis())); // Chuyển đổi từ java.util.Date sang java.sql.Date
            stmt.setInt(3, idOrderDetail);
            stmt.setInt(4, ratingRank);
            stmt.setString(5, status);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Thêm đánh giá thành công!");
            } else {
                System.out.println("Thêm đánh giá thất bại.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        FeedbackDao f = new FeedbackDao();
        System.out.println(f.getFeedbacksByProductId(62).toString());
    }
}
