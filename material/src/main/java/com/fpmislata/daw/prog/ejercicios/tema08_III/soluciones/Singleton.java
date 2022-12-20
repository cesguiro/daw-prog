package com.fpmislata.daw.prog.ejercicios.tema08_III.soluciones;

public class Singleton {
    
    private static Singleton instance;
    private int contador = 0;

    private Singleton(){
        // método privado para evitar que se puede referenciar la clase
        this.contador ++;
    }

    public static Singleton getInstance(){
        Singleton instance = (Singleton.instance != null)? Singleton.instance: new Singleton();
        return instance;
    }

    public String checkInstance(){
        return "Instancia creada. Contador: " + this.contador;
    }

}
