package com.nueravia.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String email     = request.getParameter("email");
        String company   = request.getParameter("company");
        String project   = request.getParameter("projectType");
        String message   = request.getParameter("message");

        System.out.println(firstName);
        System.out.println(email);
        System.out.println(message);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:33601/neuravia_db?useSSL=false&serverTimezone=UTC",
                    "root",
                    "root"
            );

            String sql = "INSERT INTO contact_messages " +
                         "(first_name, last_name, email, company, project_type, message) " +
                         "VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, company);
            ps.setString(5, project);
            ps.setString(6, message);

            ps.executeUpdate();

            con.close();

            response.sendRedirect("contact.jsp?success=true");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("contact.jsp?error=true");
        }
    }
}
