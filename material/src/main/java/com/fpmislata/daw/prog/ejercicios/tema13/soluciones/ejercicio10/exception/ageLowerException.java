package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio10.exception;

public class ageLowerException extends Exception{
    
    private String message = "Tienes que tener al menos 18 años para pasar";

    public String getMessage() {
        return message;
    }
}
