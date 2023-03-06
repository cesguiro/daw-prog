package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public class CPU {
    private CPUType model;

    /*private float speed;

    public CPU(CPUType model, float speed) {
        this.model = model;
        this.speed = speed;
    }

    public CPUType getModel() {
        return this.model;
    }

    public float getSpeed() {
        return this.speed;
    }

    @Override
    public String toString() {
        return "{modelo: " + this.getModel() + ", velocidad:" + this.getSpeed() + "GHz}";
    }*/

    public CPU(CPUType model) {
        this.model = model;
    }

    public CPUType getModel() {
        return this.model;
    }

    public float getSpeed() {
        return this.model.getSpeed();
    }

    @Override
    public String toString() {
        return "{modelo: " + this.getModel() + ", velocidad:" + this.model.getSpeed() + "GHz, Hilos: " + this.model.getThreads() + "}";
    }

}
