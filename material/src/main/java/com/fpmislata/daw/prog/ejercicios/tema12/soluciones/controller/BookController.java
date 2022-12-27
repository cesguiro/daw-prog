package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.controller;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.GetBooksService;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.GetBooksUseCase;

public class BookController {

    private GetBooksUseCase service;

    public BookController(GetBooksUseCase service) {
        this.service = service;
    }
 
    /*public List<Book> findAll() {
        GetBooksUseCase service = new GetBooksService();
        return service.get();
        //return BookController.service.get();
    }*/

    public List<Book> findAll() {
        return this.service.get();
        //return BookController.service.get();
    }

}
