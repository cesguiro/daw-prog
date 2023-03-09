package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.controller;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.AuthorService;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service.impl.AuthorServiceImpl;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ForeignKeyConstraintException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;

public class AuthorController {
    
    private AuthorService authorService = new AuthorServiceImpl();

    public List<Author> all(){
        return authorService.all();
    }

    public void delete(int id) throws ResourceNotFoundException, ForeignKeyConstraintException {
        authorService.delete(id);
    }


}
