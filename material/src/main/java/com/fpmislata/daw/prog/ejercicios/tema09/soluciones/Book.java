package com.fpmislata.daw.prog.ejercicios.tema09.soluciones;

public class Book extends Product{

    private final float DISCOUNT = 0.8f;

    private String autor;
    private String title;

    public Book(int id, float price, String title, String autor) {
        super(id, price);
        this.title = title;
        this.autor = autor;
    }

    public String getAutor() {
        return autor;
    }

    public String getTitle() {
        return title;
    }

    @Override
    public float getPrice(){
        return (super.getPrice() * this.DISCOUNT);
    }

    @Override
    public String toString(){
        return super.toString() + 
            ", Título: " + this.getTitle() +
            ", Autor: " + this.getAutor() + 
            "}";
    }

}
