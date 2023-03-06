package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3d.exception;

public class AgeTopException extends Exception{
    
    private String message = "Tienes que tener menos de 65 años para pasar";

    public String getMessage() {
        return message;
    }
}