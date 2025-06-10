<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GESTION DE COMENTARIOS DRAXGAMES</title>
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
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            h2 {
                color: #ffffff;
                text-align: center;
                font-size: 2em;
                margin-bottom: 20px;
            }
            .button-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 20px;
                width: 700px;
                max-width: 800px;
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
            img.logo {
                max-width: 150px;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <img src="images/logo.png" alt="DraxGames Logo" class="logo">
        <h2>DraxGames</h2>
        <div class="button-container">
            <a href="agregarComentario.jsp"><button>Agregar Comentario</button></a>
            <a href="verComentarios.jsp"><button>Ver Comentarios</button></a>
        </div>
    </body>
</html>
