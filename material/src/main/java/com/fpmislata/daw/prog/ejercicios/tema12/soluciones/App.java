package com.fpmislata.daw.prog.ejercicios.tema12.soluciones;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.controller.BookController;

public class App {
    
    private static BookController controller = new BookController();
    public static void main(String[] args) {
        
        List<Book> books = App.controller.findAll();

        System.out.println(books);
    }
}
