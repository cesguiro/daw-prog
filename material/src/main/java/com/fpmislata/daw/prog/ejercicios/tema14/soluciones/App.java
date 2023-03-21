package com.fpmislata.daw.prog.ejercicios.tema14.soluciones;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

public class App {
    
    public static void main(String[] args) {
        
        try {
            Connection connection = DBUtil.open();

            //Listado de todas las películas
            /*String sql = "SELECT * FROM movies";
            ResultSet resultSet = DBUtil.select(connection, sql, null);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }*/        

            //Buscar una película por id
            /*String sql = "SELECT * FROM movies where id = ?";
            List<Object> params = List.of(10);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }*/       

            //Insertar una película
            /*String sql = "INSERT INTO movies (title, year, rating, image, id_director) VALUES (?, ?, ?, null, ?)";
            List<Object> params = List.of(
                "prueba título", 1900, 9.5f, 1
            );
            DBUtil.insert(connection, sql, params);*/

            //Actualizar una película
            /*String sql = "UPDATE movies SET title = ? WHERE title = ?";
            List<Object> params = List.of(
                "título modificado", "prueba título"
            );
            DBUtil.update(connection, sql, params);*/

            //Borrar una película
            /*String sql = "DELETE FROM movies WHERE title = ?";
            List<Object> params = List.of(
                "título modificado"
            );
            DBUtil.delete(connection, sql, params);*/

            //Paginación
            /*int page = 2;
            int numberOfRecordsPerPage = 50;

            String sql = "SELECT * FROM movies LIMIT ?, ?";
            List<Object> params = List.of(
                (page * numberOfRecordsPerPage) - numberOfRecordsPerPage, numberOfRecordsPerPage
            );
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            } */      

            //Listado de todas las películas ordenadas por año
            /*String sql = "SELECT * FROM movies ORDER BY year desc";
            ResultSet resultSet = DBUtil.select(connection, sql, null);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }*/

            //Listado de las mejores 50 películas
            /*String sql = "SELECT * FROM movies ORDER BY rating desc LIMIT 50";
            ResultSet resultSet = DBUtil.select(connection, sql, null);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }*/

            //Detalle de una película con nombre del director
            /*String sql = "SELECT m.*, c.name FROM movies m INNER JOIN crew c ON m.id_director = c.id where m.id = ?";
            List<Object> params = List.of(10);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating") + 
                    "\nDirector: " + resultSet.getString("name") 
                    );
            }*/

            //Películas de un director
            String sql = "SELECT m.* FROM movies m INNER JOIN crew c ON m.id_director = c.id where c.id = ?";
            List<Object> params = List.of(10);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nRating: " + resultSet.getFloat("rating")
                    );
            }

            //Actores de una película
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

}
