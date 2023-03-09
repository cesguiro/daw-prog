package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;

public interface BookRepository {

    List<Book> all();

    Book findById(int id) throws ResourceNotFoundException;

    void insert(Book book);

    List<Book> findByAuthor(int author_id);

    
    
}
