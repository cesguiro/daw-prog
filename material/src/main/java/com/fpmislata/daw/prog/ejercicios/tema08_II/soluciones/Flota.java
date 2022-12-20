package com.fpmislata.daw.prog.ejercicios.tema08_II.soluciones;

import java.util.ArrayList;
import java.util.List;

public class Flota {
    
    public List<Coche> coches = new ArrayList<>();

    public void anyadirCoche(Coche coche){
        coches.add(coche);
    }

    public boolean eliminarCoche(int numeroBastidor){
        for (Coche coche : coches) {
            if (coche.getNumeroBastidor() == numeroBastidor) {
                return coches.remove(coche);
            }
        }
        return false;
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
            if (coche.getNumeroBastidor() == numeroBastidor) {
                return coche;
            }
        }

        return null;
    }

}
