<%--
  Created by IntelliJ IDEA.
  User: airm2
  Date: 15/12/2024
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin-login.css">
</head>
<body>
<%
    HttpSession session1 = request.getSession(false);
    Integer idUser = (Integer) session1.getAttribute("idUser");
    if(idUser!= null){
        response.sendRedirect("../setupData");
    }

%>
<div class="container">
    <div class="form-container">
        <h2 class="text-center mb-4">Đăng Nhập</h2>
        <form action="${pageContext.request.contextPath}/checkLogin" method="POST">
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" required name="email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mật khẩu:</label>
                <input type="password" class="form-control" id="password" required name="password">
            </div>
            <button type="submit" class="btn btn-primary w-100">Đăng Nhập</button>
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
            <div class="alert alert-danger text-center" role="alert">
                <%= errorMessage %>
            </div>
            <%
                }
            %>
            <div class="text-center mt-3">
            <a href="register.jsp" class="text-light">Đăng ký</a>
        </div>
            <div class="text-center mt-3">
                <a href="forgotPassword.jsp" class="text-light">Quên mật khẩu?</a>
            </div>

        </form>
    </div>
</div>
</body>
</html>
