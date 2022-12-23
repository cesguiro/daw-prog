package com.fpmislata.daw.prog.ejercicios.tema09_soluciones.back.controller;

import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema09_soluciones.back.domain.Customer;
import com.fpmislata.daw.prog.ejercicios.tema09_soluciones.back.domain.CustomerService;

public class CustomerController {

    public static String findAll() {
        CustomerService service = new CustomerService();
        List<Customer> customers = service.findAll();
        
        StringBuilder response = new StringBuilder("Clientes:[ ");
        for (Customer customer : customers) {
            response.append(customer + ", ");
        }
        response.deleteCharAt(response.length() - 2);
        response.append("]");
        return response.toString();
    }

    public static String read(int id) {
        CustomerService service = new CustomerService();

        Customer customer = service.read(id);

        if(customer == null) {
            return "404 .- Recurso no encontrado";
        }

        return customer.toString();
    }
}
