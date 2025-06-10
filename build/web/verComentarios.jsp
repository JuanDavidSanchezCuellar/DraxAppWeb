<%@ page import="java.sql.*" %>
<%@ page import="util.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VER COMENTARIOS DRAXGAMES</title>
        <style>
            @font-face {
                font-family: 'ND LOGOS REGULAR';
                src: url('fonts/ND LOGOS REGULAR.ttf') format('truetype');
            }
            body {
                background-color: #000000;
                font-family: 'ND LOGOS REGULAR', sans-serif;
                color: #ffffff;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .content {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                width: 90%;
                max-width: 500px;
            }
            h2 {
                color: #ffffff;
                text-align: center;
                font-size: 2em;
                margin-bottom: 20px;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 15px;
                width: 100%;
            }
            input[type="text"] {
                width: 100%;
                padding: 10px;
                margin-left: 10px;
                border: 1px solid #ffffff;
                border-radius: 5px;
                background-color: #333333;
                color: #ffffff;
                font-family: 'ND LOGOS REGULAR', sans-serif;
                font-size: 16px;
            }
            button {
                width: 100%;
                padding: 12px;
                margin-left: 10px;
                background-color: #b1384ad8;
                color: white;
                border: none;
                border-radius: 5px;
                font-family: 'ND LOGOS REGULAR', sans-serif;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease, transform 0.3s ease;
            }
            button:hover {
                background-color: #9c2f3f88;
                transform: scale(1.05);
            }
            .button-container {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }
            .comments-section {
                margin-top: 30px;
                text-align: left;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="content">
            <h2>Ver Comentarios</h2>
            <form method="post">
                <label>ID del Juego:</label>
                <input type="text" name="juegoId" required>
                <button type="submit">Buscar</button>
            </form>
            <div class="button-container">
                <a href="index.jsp"><button>Volver al Inicio</button></a>
            </div>
            <div class="comments-section">
                <%
                    String juegoId = request.getParameter("juegoId");

                    if (juegoId != null && !juegoId.isEmpty()) {
                        try {
                            Connection conn = ConexionBD.obtenerConexion();
                            PreparedStatement ps = conn.prepareStatement(
                                "SELECT c.comentario, u.nombre FROM comentarios c JOIN users u ON c.user_id = u.id WHERE juego_id = ?");
                            ps.setInt(1, Integer.parseInt(juegoId));
                            ResultSet rs = ps.executeQuery();
                %>
                <h3>Comentarios para Juego ID: <%= juegoId %></h3>
                <ul>
                <%
                    boolean hayComentarios = false;
                    while (rs.next()) {
                        hayComentarios = true;
                %>
                    <li><strong><%= rs.getString("nombre") %>:</strong> <%= rs.getString("comentario") %></li>
                <%
                    }
                    if (!hayComentarios) {
                %>
                    <p>No hay comentarios para este juego.</p>
                <%
                    }
                    rs.close();
                    ps.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("Error al cargar comentarios: " + e.getMessage());
                }
            }
                %>
            </div>
        </div>
    </body>
</html>
