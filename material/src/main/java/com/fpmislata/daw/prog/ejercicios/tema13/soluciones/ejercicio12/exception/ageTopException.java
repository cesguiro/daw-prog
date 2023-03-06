package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio12.exception;

public class ageTopException extends RuntimeException{
    
    private String message = "Tienes que tener menos de 65 años para pasar";

    public String getMessage() {
        return message;
    }
}