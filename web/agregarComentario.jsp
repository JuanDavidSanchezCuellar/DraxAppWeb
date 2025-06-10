<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR COMENTARIOS DRAXGAMES</title>
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
                width: 90%;
                max-width: 500px;
            }
            h2 {
                color: #ffffff;
                text-align: center;
                font-size: 2em;
                margin: 20px 0;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 15px;
                width: 100%;
            }
            input[type="text"], textarea {
                width: 100%;
                padding: 10px;
                border: 1px solid #ffffff;
                border-radius: 5px;
                background-color: #333333;
                color: #ffffff;
                font-family: 'ND LOGOS REGULAR', sans-serif;
                font-size: 16px;
            }
            textarea {
                resize: none;
                height: 100px;
            }
            button {
                width: 100%;
                padding: 12px;
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
        </style>
    </head>
    <body>
        <div class="content">
            <h2>Agregar Comentarios</h2>
            <form action="ComentarioServlet" method="post">
                <input type="hidden" name="accion" value="agregar">
                <input type="text" name="usuario_id" placeholder="ID del usuario"><br>
                <input type="text" name="juego" placeholder="ID del juego"><br>
                <textarea name="comentario" placeholder="Comentario"></textarea><br>
                <button type="submit">Enviar comentario</button>
            </form>
            <div class="button-container">
                <a href="index.jsp"><button>Volver al Inicio</button></a>
            </div>
        </div>
    </body>
</html>

