package com.user.servlet;

import java.io.IOException;
import com.dao.UserDao;
import com.db.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String newPassword = req.getParameter("newPassword");
        String confirmPassword = req.getParameter("confirmPassword");

        HttpSession session = req.getSession();

        if (!newPassword.equals(confirmPassword)) {
            session.setAttribute("errorMsg", "Passwords do not match");
            resp.sendRedirect("forgot_password.jsp");
            return;
        }

        UserDao dao = new UserDao(DBConnect.getConn());
        boolean isUpdated = dao.updatePassword(email, newPassword);

        if (isUpdated) {
            session.setAttribute("succMsg", "Password updated successfully");
            resp.sendRedirect("user_login.jsp");
        } else {
            session.setAttribute("errorMsg", "Invalid email");
            resp.sendRedirect("forgot_password.jsp");
        }
    }
}
