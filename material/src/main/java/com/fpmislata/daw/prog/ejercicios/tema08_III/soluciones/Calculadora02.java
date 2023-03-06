package com.fpmislata.daw.prog.ejercicios.tema08_III.soluciones;

public class Calculadora02 {

    private static int resultado;

    public static int sumar(int numero1, int numero2) {
        Calculadora02.resultado = numero1 + numero2;
        return Calculadora02.resultado;
    }

    public static int restar(int numero1, int numero2){
        Calculadora02.resultado = numero1 - numero2;
        return Calculadora02.resultado;
    }

    public static int multiplicar(int numero1, int numero2){
        Calculadora02.resultado = numero1 * numero2;
        return Calculadora02.resultado;
    }

    public static int dividir(int numero1, int numero2){
        Calculadora02.resultado = numero1 / numero2;
        return Calculadora02.resultado;
    }
}
