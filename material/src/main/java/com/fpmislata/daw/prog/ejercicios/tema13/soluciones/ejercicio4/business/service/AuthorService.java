package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.service;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ForeignKeyConstraintException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;

public interface AuthorService {

    public Author findById(int id) throws ResourceNotFoundException;

    public void delete(int id) throws ResourceNotFoundException, ForeignKeyConstraintException;

    public List<Author> all();
    
} 
