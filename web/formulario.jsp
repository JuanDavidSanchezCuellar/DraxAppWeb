<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Formulario Comentarios</title></head>
<body>
<h2>Agregar Comentario</h2>
<form action="ComentarioServlet" method="post">
  <input type="hidden" name="accion" value="agregar">
  <input type="text" name="usuario_id" placeholder="ID del usuario"><br>
  <input type="text" name="juego" placeholder="ID del juego"><br>
  <textarea name="comentario" placeholder="Comentario"></textarea><br>
  <button type="submit">Enviar comentario</button>
</form>
</body>
</html>

