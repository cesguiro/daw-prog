package com.fpmislata.daw.prog.ejercicios.tema09.soluciones;

public class CPU {
    private String model;
    private float speed;

    public CPU(String model, float speed) {
        this.model = model;
        this.speed = speed;
    }

    public String getModel() {
        return this.model;
    }

    public float getSpeed() {
        return this.speed;
    }

    @Override
    public String toString() {
        return "{modelo: " + this.getModel() + ", velocidad:" + this.getSpeed() + "GHz}";
    }

}
