package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.controller.AuthorController;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.controller.BookController;

public class App {
    
    public static void main(String[] args) {
        BookController bookController = new BookController();
        AuthorController authorController = new AuthorController();

        //Todos los libros
        //System.out.println(bookController.all());

        //Buscar un libro por id
        /*try {
            System.out.println(bookController.findById(1));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }*/

        //Añadir un libro
        /*try {
            Book book = new Book("El nombre del viento", 4);
            //Book book = new Book("Yo robot", 300);
            bookController.insert(book);
            System.out.println(bookController.all());                
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }*/

        //Buscar libros por autor
        /*try {
            System.out.println(bookController.findByAuthor(2));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }*/

        //Listado de autores
        //System.out.println(authorController.all());

        //Borrar un autor (si tiene algún libro asociado, no permitir)
        try {
            authorController.delete(4);
            System.out.println(authorController.all());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
