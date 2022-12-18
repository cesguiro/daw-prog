package com.fpmislata.daw.prog.ejercicios.tema08_III.soluciones;

public class Ejercicio0304 {

    public static void main(String[] args) {
        //Singleton singleton = new Singleton();
        Singleton instance = Singleton.getInstance();
        System.out.println(instance.checkInstance());

        instance = Singleton.getInstance();
        System.out.println(instance.checkInstance());
    }
}
