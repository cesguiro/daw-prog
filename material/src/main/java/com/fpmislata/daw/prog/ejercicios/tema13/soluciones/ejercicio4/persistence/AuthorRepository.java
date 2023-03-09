package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;

public interface AuthorRepository {

    Author findById(int id) throws ResourceNotFoundException;

    void delete(int id) throws ResourceNotFoundException;

    List<Author> all();
    
}
