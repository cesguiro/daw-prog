package com.fpmislata.daw.prog.ejemplos.tema14;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class App {
    
    public static void main(String[] args) {
        try {
            Connection connection = DBUtil.open();
            System.out.println("Conexión establecida con la bbdd");
            
            /*String sql = """
                INSERT INTO movies (imdb_id, title, year, image, runtime, description, director_id) 
                VALUES ('tt0071524', 'Segunda plana', 1974, null, 105, null, 'nm0000697')                    
            """;
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = "UPDATE movies SET title = 'Primera plana' WHERE title = 'Segunda plana'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = "DELETE FROM movies WHERE title = 'Primera plana'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = """
                INSERT INTO movies (imdb_id, title, year, image, runtime, description, director_id) 
                VALUES (?, ?, ?, null, ?, null, ?)                    
            """;
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "tt0071524");
            preparedStatement.setString(2, "Primera plana");
            preparedStatement.setInt(3, 1974);
            preparedStatement.setInt(4, 105);
            preparedStatement.setString(5, "nm0000697");
            preparedStatement.executeUpdate();*/


            /*String sql = """
                INSERT INTO movies (imdb_id, title, year, image, runtime, description, director_id) 
                VALUES (?, ?, ?, null, ?, null, 'nm0000697')                    
            """;
            List<Object> params = List.of(
                "tt0071524", "Primera plana", 1974, 105, "nm0000697"
            );
            DBUtil.insert(connection, sql, params);*/

            /*String sql = "DELETE FROM movies WHERE title = ?";
            List<Object> params = List.of(
                "prueba título"
            );
            DBUtil.delete(connection, sql, params);*/

            /*String sql = "SELECT * FROM movies WHERE title = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "Seven");
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            System.out.println(
                "Título: " + resultSet.getString("title") + 
                "\nAño: " + resultSet.getInt("year") + 
                "\nDuración: " + resultSet.getInt("runtime") + " min\n"
            );*/


            /*String sql = "SELECT * FROM movies WHERE year = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, 1994);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }*/

            String sql = "SELECT * FROM movies WHERE year = ?";
            List<Object> params = List.of(1994);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }



            DBUtil.close(connection);                
        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println("Algo no ha funcionado como debería");
        }
    }
}
