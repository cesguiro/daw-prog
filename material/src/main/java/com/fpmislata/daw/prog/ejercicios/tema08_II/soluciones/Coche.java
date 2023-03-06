package com.fpmislata.daw.prog.ejercicios.tema08_II.soluciones;

public class Coche {

    private String marca, modelo, color;
    private int numeroBastidor, velocidad = 0;

    /*
     * Ejercicio 2
     */
    Coche(String marca, String modelo, String color, int numeroBastidor) {
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.numeroBastidor = numeroBastidor;
    }

    /*
     * Ejercicio 3
     */
    Coche(){

    }


    public String toString() {
        return String.format("%s %s de color %s con número de bastidor %d", 
        this.marca,
        this.modelo,
        this.color,
        this.numeroBastidor);
    }

    public void acelerar() {
        this.velocidad += 5;
    } 

    public void frenar() {
        this.velocidad -= 5;
    }

    public void acelerar(int incremento) {
        this.velocidad += incremento;
    }

    public void frenar(int decremento) {
        this.velocidad -= decremento;
    }

    /**
     * Ejercicio 1
     */
    public String getMarca() {
        return this.marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return this.modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getNumeroBastidor() {
        return this.numeroBastidor;
    }

    public void setNumeroBastidor(int numeroBastidor) {
        this.numeroBastidor = numeroBastidor;
    }

    public int getVelocidad() {
        return this.velocidad;
    }
}
