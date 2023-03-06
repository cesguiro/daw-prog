package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio12.exception;

public class ageLowerException extends RuntimeException{
    
    private String message = "Tienes que tener al menos 18 años para pasar";

    public String getMessage() {
        return message;
    }
}
