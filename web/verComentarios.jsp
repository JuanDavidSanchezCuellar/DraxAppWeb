<%@ page import="java.sql.*" %>
<%@ page import="util.ConexionBD" %>
<%
    try {
        String juegoId = request.getParameter("juego");
        Connection conn = ConexionBD.obtenerConexion();
        PreparedStatement ps = conn.prepareStatement(
            "SELECT c.comentario, u.nombre FROM comentarios c JOIN users u ON c.user_id = u.id WHERE juego_id = ?");
        ps.setInt(1, Integer.parseInt(juegoId));
        ResultSet rs = ps.executeQuery();
%>
    <ul>
    <% while(rs.next()) { %>
        <li><strong><%= rs.getString("nombre") %>:</strong> <%= rs.getString("comentario") %></li>
    <% } %>
    </ul>
<%
        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        out.println("Error al cargar comentarios: " + e.getMessage());
    }
%>
