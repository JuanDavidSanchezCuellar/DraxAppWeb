package controlador;

import util.ConexionBD;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ComentarioServlet")
public class ComentarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if ("agregar".equals(accion)) {
            int userId = Integer.parseInt(request.getParameter("usuario_id"));
            int juegoId = Integer.parseInt(request.getParameter("juego"));
            String comentario = request.getParameter("comentario");

            try (Connection conn = ConexionBD.obtenerConexion()) {
                PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO comentarios (juego_id, user_id, comentario) VALUES (?, ?, ?)");
                ps.setInt(1, juegoId);
                ps.setInt(2, userId);
                ps.setString(3, comentario);
                ps.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("verComentarios.jsp?juego=" + juegoId);
        }
    }
}
    