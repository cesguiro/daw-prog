package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3c.exception;

public class AgeLowerException extends Exception{
    
    private String message = "Tienes que ser mayor de edad para pasar";

    public String getMessage() {
        return message;
    }
}
