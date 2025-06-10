package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Locale;

public class ConexionBD {
    public static Connection obtenerConexion() throws Exception {
        Locale.setDefault(new Locale("en", "US"));
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/draxgames", "root", "1034282951");
    }
}

