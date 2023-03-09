package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.impl;

import java.util.List;


import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.AuthorService;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ForeignKeyConstraintException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.AuthorRepository;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.BookRepository;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.impl.AuthorRepositoryImpl;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.impl.BookRepositoryImpl;

public class AuthorServiceImpl implements AuthorService{

    private AuthorRepository authorRepository = new AuthorRepositoryImpl();
    private BookRepository bookRepository = new BookRepositoryImpl();
    //private BookService bookService = new BookServiceImpl();

    @Override
    public List<Author> all() {
        return authorRepository.all();
    }

    @Override
    public Author findById(int id) throws ResourceNotFoundException {
        return authorRepository.findById(id);
    }

    @Override
    public void delete(int id) throws ResourceNotFoundException, ForeignKeyConstraintException {
        //List<Book> booksAuthor = bookService.findByAuthor(id);
        List<Book> booksAuthor = bookRepository.findByAuthor(id);
        if(booksAuthor.isEmpty()) {
            authorRepository.delete(id);
        } else {
            throw new ForeignKeyConstraintException("Borra primero los libros asociados al autor");
        }
    }

    
}
