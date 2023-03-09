package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.controller;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.BookService;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.impl.BookServiceImpl;

public class BookController {

    private BookService bookService = new BookServiceImpl();
    
    public List<Book> all(){
        try {   
            return bookService.all();
        } catch (Exception e) {
            throw e;
        }
    }

    public Book findById(int id) throws Exception{
        try {
            return bookService.findById(id);            
        } catch (Exception e) {
            throw e;
        }
    }

    public void insert(Book book) throws Exception{
        try {
            bookService.insert(book);
        } catch (Exception e) {
            throw e;
        }
    }

    public List<Book> findByAuthor(int author_id) throws Exception{
        try {
            return bookService.findByAuthor(author_id);
        } catch (Exception e) {
            throw e;
        }
    }

}
