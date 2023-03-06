package com.fpmislata.daw.prog.ejemplos.tema14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
    
    public static Connection open() {
        try {
            Connection connection = DriverManager
                .getConnection("jdbc:mariadb://localhost:3306/ciclismo?user=root&password=admin");
            return connection;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }

    public static void close(Connection connection){
        try {
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }

    public static ResultSet select(Connection connection, String sql) {
        return null;
    }
}
