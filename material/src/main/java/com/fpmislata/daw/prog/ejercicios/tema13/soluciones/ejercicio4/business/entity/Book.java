package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity;

//package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio4.business.entity;

import java.util.List;

public class Book {

    private int id;
    private String title;
    private int author_id;

    public Book(String title, int author_id) {
        this.title = title;
        this.author_id = author_id;
    }

    public Book(int id, String title, int author_id) {
        this.id = id;
        this.title = title;
        this.author_id = author_id;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public int getAuthor_id() {
        return author_id;
    }

    @Override
    public String toString() {
        return "Book [id=" + id + ", title=" + title + ", author_id=" + author_id + "]";
    }

    public void setId(int id) {
        this.id = id;
    }

}
