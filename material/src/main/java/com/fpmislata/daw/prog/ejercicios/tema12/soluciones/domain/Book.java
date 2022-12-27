package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.domain;

public class Book {
    
    private int id;
    private String title;
    private String autor;
    
    public Book(int id, String title, String autor) {
        this.id = id;
        this.title = title;
        this.autor = autor;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getAutor() {
        return autor;
    }

    @Override
    public String toString() {
        return "Book {id: " + this.id + ", título: " + this.title + ", autor: " + this.autor + "}";
    }

}
