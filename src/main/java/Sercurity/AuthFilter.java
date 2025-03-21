package Sercurity;

import io.jsonwebtoken.Claims;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebFilter("/author/*")
public class AuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String path = req.getRequestURI();


        if (path.startsWith("/checkLogin") || path.startsWith("/public")) {
            chain.doFilter(request, response);
            return;
        }

        String authHeader = req.getHeader("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            String token = authHeader.replace("Bearer ", "");

            try {
                Claims claims = JwtUtil.extractClaims(token);
                String role = claims.get("role", String.class);


                if (path.startsWith("/admin") && !"ADMIN".equals(role)) {
                    res.setStatus(HttpServletResponse.SC_FORBIDDEN);
                    res.getWriter().write("403 - Chỉ Admin mới vào được");
                    return;
                } else if (path.startsWith("/user") && !(role.equals("USER") || role.equals("ADMIN"))) {
                    res.setStatus(HttpServletResponse.SC_FORBIDDEN);
                    res.getWriter().write("403 - Chỉ USER hoặc ADMIN mới vào được");
                    return;
                } else if (path.startsWith("/mod") && !(role.equals("MOD") || role.equals("ADMIN"))) {
                    res.setStatus(HttpServletResponse.SC_FORBIDDEN);
                    res.getWriter().write("403 - Chỉ MOD hoặc ADMIN mới vào được");
                    return;
                }


                chain.doFilter(request, response);
                return;

            } catch (Exception e) {
                res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                res.getWriter().write("401 - Token không hợp lệ hoặc hết hạn");
                return;
            }
        } else {
            res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            res.getWriter().write("401 - Thiếu Authorization header");
        }
    }
}
