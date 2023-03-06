package com.fpmislata.daw.prog.ejercicios.tema09.soluciones;

public class HD {
    
    private String type;
    private int capacity;

    public HD(String type, int capacity) {
        this.type = type;
        this.capacity = capacity;
    }

    public String getType() {
        return this.type;
    }

    public int getCapacity() {
        return this.capacity;
    }

    @Override
    public String toString(){
        return "{" + 
            "Tipo: " + this.getType() +
            ", Capacidad: " +  this.getCapacity() + "GB" +
            "}";
    }

}
