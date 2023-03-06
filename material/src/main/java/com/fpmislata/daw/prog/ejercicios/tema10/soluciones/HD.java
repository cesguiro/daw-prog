package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public class HD {
    
    private HDType type;
    private int capacity;

    public HD(HDType type, int capacity) {
        this.type = type;
        this.capacity = capacity;
    }

    public HDType getType() {
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
