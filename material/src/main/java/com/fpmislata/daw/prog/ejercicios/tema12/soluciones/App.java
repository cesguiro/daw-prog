package com.fpmislata.daw.prog.ejercicios.tema12.soluciones;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.controller.BookController;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.GetBooksService;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.GetBooksUseCase;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookEnumDao;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookStaticDao;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.IBookDAO;

public class App {
    
    private static BookController controller;
    public static void main(String[] args) {
        
        //App.controller = new BookController();

        //IBookDAO dao = new BookStaticDao();
        IBookDAO dao = new BookEnumDao();
        GetBooksUseCase service = new GetBooksService(dao);
        App.controller = new BookController(service);
        
        List<Book> books = App.controller.findAll();

        System.out.println(books);
    }
}
