package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity;

import java.util.List;

public class Book {

    private int id;
    private String title;
    private List<Author> authors;

    public Book(String title, List<Author> authors) {
        this.title = title;
        this.authors = authors;
    }

    public Book(int id, String title, List<Author> authors) {
        this.id = id;
        this.title = title;
        this.authors = authors;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public List<Author> getAuthors() {
        return authors;
    }

    @Override
    public String toString() {
        return "Book [id=" + id + ", title=" + title + ", authors=" + authors + "]";
    }

}
