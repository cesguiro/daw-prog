package com.fpmislata.daw.prog.ejercicios.tema09.soluciones.back.domain;

public class Customer {
    
    private int id;
    private String name;
    private String nif;

    public Customer(int id, String name, String nif) {
        this.id = id;
        this.name = name;
        this.nif = nif;
    }

    public int getId() {
        return this.id;
    }

    public String getNombre() {
        return this.name;
    }

    public String getNif() {
        return this.nif;
    }

    @Override
    public String toString(){
        return "{" +
            this.id + ", " +
            this.name + ", " +
            this.nif + "}";
    }

}
