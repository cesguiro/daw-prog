package com.fpmislata.daw.prog.ejercicios.tema08_I.soluciones;

public class Coche {

    /**
     * Ejercicio 1
     */
    public String marca, modelo, color;
    public int numeroBastidor, velocidad = 0;


    /**
     * Ejercicio 2
     */
    @Override
    public String toString() {
        return String.format("%s %s de color %s con número de bastidor %d", 
        marca,
        modelo,
        color,
        numeroBastidor);
    }

    /**
     * Ejercicio 3
     */
    public void acelerar() {
        velocidad += 5;
    } 

    public void frenar() {
        velocidad -= 5;
    }

    /**
     * Ejercicio 4
     */
    public void acelerar(int incremento) {
        velocidad += incremento;
    }

    public void frenar(int decremento) {
        velocidad -= decremento;
    }

}
