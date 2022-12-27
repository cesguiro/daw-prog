package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain.Book;

public interface IBookDAO {
    
    public List<Book> all();
}
