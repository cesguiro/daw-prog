package com.fpmislata.daw.prog.ejercicios.tema08_III.soluciones;

public class Ejercicio05 {
    
    public static void main(String[] args) {
        GeneradorId generador = GeneradorId.getGenerador();
        System.out.println(generador.getUuid());

        generador = GeneradorId.getGenerador();
        System.out.println(generador.getUuid());
    }
}
