package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.impl;

import java.util.ArrayList;
import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
//import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.BookRepository;

public class BookRepositoryImpl implements BookRepository{

    private List<Book> books = new ArrayList<>();


    public BookRepositoryImpl() {
        books.addAll(
            List.of(
                new Book(1, "El nombre de la rosa", 1),
                new Book(2, "El señor de los anillos", 2),
                new Book(3, "El hobbit", 2),
                new Book(4, "La fundación", 3)
            )
        );
    }

    @Override
    public List<Book> all() {
        return books;
    }

    @Override
    public Book findById(int id) throws ResourceNotFoundException {
        for (Book book : books) {
            if(book.getId() == id) {
                return book;
            }
        }
        throw new ResourceNotFoundException("El libro con id " + id + " no existe");
    }

    @Override
    public void insert(Book book) {
        int last_id = books.get(books.size() - 1).getId();
        book.setId(last_id + 1);
        books.add(book);
    }

    @Override
    public List<Book> findByAuthor(int author_id) {
        List<Book> result = new ArrayList<>();
        for (Book book : books) {
            if(book.getAuthor_id() == author_id) {
                result.add(book);
            }
        }
        return result;
    }
    
}
