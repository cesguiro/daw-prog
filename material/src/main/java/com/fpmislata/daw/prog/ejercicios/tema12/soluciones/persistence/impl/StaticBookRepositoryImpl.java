package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.impl;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookRepository;

public class StaticBookRepositoryImpl implements BookRepository{

    List<Book> books = List.of(
        new Book(1, "El nombre de la rosa", "Umberto Eco"),
        new Book(2, "La insoportable levedad del ser", "Milan Kundera"),
        new Book(3, "1Q84", "Haruki Murakami")
    );

    @Override
    public List<Book> all() {
        return this.books;
    }
    
}
