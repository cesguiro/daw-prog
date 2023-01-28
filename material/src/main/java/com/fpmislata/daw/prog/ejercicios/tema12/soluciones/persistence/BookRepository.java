package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;

public interface BookRepository {
    
    public List<Book> all();
}
