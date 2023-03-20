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
            
            /*String sql = "INSERT INTO movies (title, year, rating, image, id_director) VALUES ('prueba título', 1900, 9.5, null, 1)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = "UPDATE movies SET title = 'título modificado' WHERE title = 'prueba título'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = "DELETE FROM movies WHERE title = 'título modificado'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();*/

            /*String sql = "INSERT INTO movies (title, year, rating, image, id_director) VALUES (?, ?, ?, null, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "prueba título");
            preparedStatement.setInt(2, 1900);
            preparedStatement.setFloat(3, 9.5f);
            preparedStatement.setInt(4, 1);
            preparedStatement.executeUpdate();*/


            /*String sql = "INSERT INTO movies (title, year, rating, image, id_director) VALUES (?, ?, ?, null, ?)";
            List<Object> params = List.of(
                "prueba título", 1900, 9.5f, 1
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
                "\nRating: " + resultSet.getFloat("rating")
            );*/


            /*String sql = "SELECT * FROM movies WHERE year = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, 1994);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }*/

            String sql = "SELECT * FROM movies WHERE year = ?";
            List<Object> params = List.of(1994);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }



            DBUtil.close(connection);                
        } catch (Exception e) {
            System.out.println("Algo no ha funcionado como debería");
        }
    }
}
