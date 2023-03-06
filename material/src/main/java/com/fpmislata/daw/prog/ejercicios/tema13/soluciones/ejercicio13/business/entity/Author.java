package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio13.business.entity;

public class Author {

    private int id;
    private String name;

    public Author(String name) {
        this.name = name;
    }

    public Author(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "Author [id=" + id + ", name=" + name + "]";
    }

}
