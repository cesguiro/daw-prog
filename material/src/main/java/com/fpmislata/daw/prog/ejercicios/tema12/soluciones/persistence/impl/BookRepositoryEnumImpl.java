package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.impl;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookEnum;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookRepository;

public class BookRepositoryEnumImpl implements BookRepository{

    @Override
    public List<Book> all() {
        BookEnum book1 = BookEnum.BOOK1;
        BookEnum book2 = BookEnum.BOOK2;
        BookEnum book3 = BookEnum.BOOK3;

        List<Book> books = List.of(
            new Book(book1.getId(), book1.getTitle(), book1.getAutor()),
            new Book(book2.getId(), book2.getTitle(), book2.getAutor()),
            new Book(book3.getId(), book3.getTitle(), book3.getAutor())
        );

        return books;
    }
    
}
