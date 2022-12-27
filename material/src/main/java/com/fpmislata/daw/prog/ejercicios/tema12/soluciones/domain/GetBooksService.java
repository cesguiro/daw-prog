package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.BookStaticDao;
import com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence.IBookDAO;

public class GetBooksService implements GetBooksUseCase{

    private IBookDAO dao;

    public GetBooksService(IBookDAO dao) {
        this.dao = dao;
    }

    /*public List<Book> get() {
        IBookDAO bookDao = new BookStaticDao();
        return bookDao.all();
    }*/

    public List<Book> get() {
        
        return this.dao.all();
    }
    
}
