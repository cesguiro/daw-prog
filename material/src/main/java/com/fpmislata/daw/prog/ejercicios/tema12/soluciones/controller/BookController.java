package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.controller;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.service.BookService;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.service.impl.BooksServiceImpl;

public class BookController {

    private BookService service = new BooksServiceImpl();

     public List<Book> findAll() {
        return this.service.get();
    }

}
