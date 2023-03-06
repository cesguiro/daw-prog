package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3d.exception;

public class AgeLowerException extends Exception{
    
    private String message = "Tienes que ser mayor de edadc para pasar";

    public String getMessage() {
        return message;
    }
}
