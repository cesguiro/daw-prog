package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.impl;

import java.util.ArrayList;
import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
//import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity.Author;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.exceptions.ResourceNotFoundException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.persistence.AuthorRepository;

public class AuthorRepositoryImpl implements AuthorRepository{

    private List<Author> authors = new ArrayList<>(
        List.of(
            new Author(1, "Umberto Eco"),
            new Author(2, "J. R. R. Tolkien"),
            new Author(3, "Isaac Asimov"),
            new Author(4, "Alejandro Dumas")
        )
    );

    @Override
    public List<Author> all() {
        return authors;
    }    

    @Override
    public Author findById(int id) throws ResourceNotFoundException {
        for (Author author : authors) {
            if(author.getId() == id) {
                return author;
            }
        }

        throw new ResourceNotFoundException("El autor con id " + id + " no existe");
    }

    @Override
    public void delete(int id) throws ResourceNotFoundException {
        Author author = findById(id);
        authors.remove(author);
    }
    
}
