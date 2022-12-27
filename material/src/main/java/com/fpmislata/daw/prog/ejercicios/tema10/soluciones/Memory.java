package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public class Memory {
    private int capacity;

    public Memory(int capacity) {
        this.capacity = capacity;
    }

    @Override
    public String toString() {
        return "{capacidad: " + this.getCapacity() + "GB}";
    }

    public int getCapacity() {
        return capacity;
    }

    
}
