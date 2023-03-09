package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.impl;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
//import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
//import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.AuthorService;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.BookService;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.BookRepository;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.impl.BookRepositoryImpl;

public class BookServiceImpl implements BookService{
    
    private BookRepository bookRepository = new BookRepositoryImpl();
    private AuthorService authorService = new AuthorServiceImpl();

    @Override
    public List<Book> all() {
        return bookRepository.all();
    }

    @Override
    public Book findById(int id) throws ResourceNotFoundException {
        return bookRepository.findById(id);
    }

    @Override
    public void insert(Book book) throws ResourceNotFoundException {
        int author_id = book.getAuthor_id();
        Author author = authorService.findById(author_id);
        bookRepository.insert(book);
    }

    @Override
    public List<Book> findByAuthor(int author_id) throws ResourceNotFoundException {
        Author author = authorService.findById(author_id);
        return bookRepository.findByAuthor(author_id);
    }

}
