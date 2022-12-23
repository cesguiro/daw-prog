package com.fpmislata.daw.prog.ejercicios.tema09_soluciones.back;

import com.fpmislata.daw.prog.ejercicios.tema09_soluciones.back.controller.CustomerController;

public class App {     
    
    public static String response(int option, int id) {
        // Ejercicio 3
        //String reponse = "Respuesta del servidor...";
        String response;

        switch (option) {
            case 1:
                response = CustomerController.findAll(); 
                break;
            case 2:
                response = CustomerController.read(id);
                break;
            default:
                response = "404 .- Recurso no encontrado";
                break;
        }
        return response;
    }
}
