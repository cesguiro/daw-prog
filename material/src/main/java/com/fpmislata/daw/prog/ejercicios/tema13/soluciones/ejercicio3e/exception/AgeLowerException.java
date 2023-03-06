package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3e.exception;

public class AgeLowerException extends RuntimeException{
    
    private String message = "Tienes que tener al menos 18 años para pasar";

    public String getMessage() {
        return message;
    }
}
