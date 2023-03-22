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
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
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
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }*/   

            //Insertar una película
            /*String sql = "INSERT INTO movies (imdb_id, title, year, image, runtime, description, director_id) VALUES (?, ?, ?, null, ?, null, ?)";
            List<Object> params = List.of(
                "tt0071524", "Segunda plana", 1974, 105, "nm0000697" 
            );
            DBUtil.insert(connection, sql, params);*/

            //Actualizar una película
            /*String sql = "UPDATE movies SET title = ? WHERE title = ?";
            List<Object> params = List.of(
                "Primera plana", "Segunda plana"
            );
            DBUtil.update(connection, sql, params);*/

            //Borrar una película
            /*String sql = "DELETE FROM movies WHERE title = ?";
            List<Object> params = List.of(
                "Primera plana"
            );
            DBUtil.delete(connection, sql, params);*/

            //Paginación
            /*int page = 1;
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
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }*/

            //Listado de todas las películas ordenadas por año
            /*String sql = "SELECT * FROM movies ORDER BY year desc";
            ResultSet resultSet = DBUtil.select(connection, sql, null);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }*/

            //Listado de las mejores 50 películas
            /*String sql = "SELECT * FROM movies ORDER BY rating desc LIMIT 50";
            ResultSet resultSet = DBUtil.select(connection, sql, null);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }*/

            //Detalle de una película con nombre del director
            /*String sql = "SELECT m.*, d.name FROM movies m INNER JOIN directors d ON m.director_id = d.imdb_id where m.id = ?";
            List<Object> params = List.of(5);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min" +
                    "\nDirector: " + resultSet.getString("name") + "\n"
                    );
            }*/

            //Películas de un director
            String sql = "SELECT m.* FROM movies m INNER JOIN directors d ON m.director_id = d.imdb_id where d.id = 2";
            List<Object> params = List.of(10);
            ResultSet resultSet = DBUtil.select(connection, sql, params);
            while (resultSet.next()) {
                System.out.println(
                    "Título: " + resultSet.getString("title") + 
                    "\nAño: " + resultSet.getInt("year") + 
                    "\nDuración: " + resultSet.getInt("runtime") + " min\n"
                    );
            }

            //Actores de una película
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

}
