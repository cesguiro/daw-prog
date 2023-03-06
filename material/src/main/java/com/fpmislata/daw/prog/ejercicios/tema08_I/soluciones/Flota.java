package com.fpmislata.daw.prog.ejercicios.tema08_I.soluciones;

import java.util.ArrayList;
import java.util.List;

public class Flota {
    
    public List<Coche> coches = new ArrayList<Coche>();

    public void anyadirCoche(Coche coche){
        coches.add(coche);
    }

    /*public void eliminarCoche(int numeroBastidor) {
        for (Coche coche : coches) {
            if (coche.numeroBastidor == numeroBastidor) {
                coches.remove(coche);
                break;
            }
        }
    }*/

    public boolean eliminarCoche(int numeroBastidor){
        for (Coche coche : coches) {
            if (coche.numeroBastidor == numeroBastidor) {
                coches.remove(coche);
                return true;
            }
        }
        return false;
    }

    public void listaCoches() {
        System.out.println("Flota: ");
        for (Coche coche : coches) {
            System.out.println("Coche: ");
            System.out.println(coche.toString());
            System.out.println();
        }
    }

    @Override
    public String toString(){
        StringBuffer resultado = new StringBuffer();
        resultado.append("Flota:\n\n");
        for (Coche coche : coches) {
            resultado.append(coche.toString() + "\n");
        }
        return resultado.toString(); 
    }

    /**
     * Ejercicio 8
     */
    public Coche buscaCoche(int numeroBastidor) {
        for (Coche coche : coches) {
            if (coche.numeroBastidor == numeroBastidor) {
                return coche;
            }
        }

        return null;
    }

}
