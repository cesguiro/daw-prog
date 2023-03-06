package com.fpmislata.daw.prog.ejercicios.tema12.soluciones.persistence;

public enum BookEnum{

    BOOK1(100, "El nombre de la rosa", "Umberto Eco"),
    BOOK2(200, "La insoportable levedad del ser", "Milan Kundera"),
    BOOK3(300, "1Q84", "Haruki Murakami");

    private int id;
    private String title;
    private String autor;

    private BookEnum(int id, String title, String autor) {
        this.id = id;
        this.title = title;
        this.autor = autor;
    }

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public String getAuthor() {
        return this.autor;
    }
    

}