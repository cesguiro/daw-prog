package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.service.impl;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.entity.Book;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.business.service.BookService;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookRepository;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.impl.EnumBookRepositoryImpl;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.impl.StaticBookRepositoryImpl;

public class BooksServiceImpl implements BookService{

    private BookRepository repository = new StaticBookRepositoryImpl();
    //private BookRepository repository = new BookRepositoryEnumImpl();

    public List<Book> getAll() {
        
        return this.repository.all();
    }
    
}
