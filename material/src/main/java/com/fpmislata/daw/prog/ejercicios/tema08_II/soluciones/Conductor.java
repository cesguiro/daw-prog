package com.fpmislata.daw.prog.ejercicios.tema08_II.soluciones;

public class Conductor {
    
    private String nombre;
    private String dni;
    private Coche asignado;


    public Conductor(String nombre, String dni, Coche asignado) {
        this.nombre = nombre;
        this.dni = dni;
        this.asignado = asignado;
    }

    /**
     * Ejercicio 8
     * @param coche
     */
    public void asignarCoche(int numeroBastidor, Flota flota) {
        Coche coche = flota.buscaCoche(numeroBastidor);
        if(coche != null) {
            this.asignado = coche;
        }
    }

    /**
     * Ejercicio 8
     */
    public void mostrarCocheAsignado() {
        System.out.println("Coche asignado a " + nombre + ": ");
        System.out.println(asignado.toString());        
    }

    /**
     * Ejercicio 9
     */
    /*public void asignarCoche(Coche coche){
        asignado = coche;
        //return false;
    }*/


    /*
     * Ejercicio 8
     */

    /*public void mostrarCocheAsignado() {
        if(asignado != null) {
            System.out.println("Coche asignado a " + nombre + ": ");
            System.out.println(asignado.toString());
        } else {
            System.out.println(nombre + " no tiene asignado ningún coche");
        }
    }*/

    /**
     * Ejercicio 9
     */
    public void eliminarCoche() {
        asignado = null;
    }

    /**
     * Ejercicio 10
     */
}
