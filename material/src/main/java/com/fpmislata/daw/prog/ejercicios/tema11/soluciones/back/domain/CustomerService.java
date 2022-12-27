package com.fpmislata.daw.prog.ejercicios.tema11.soluciones.back.domain;

import java.util.ArrayList;
import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema11.soluciones.back.persistence.CustomerDao;

public class CustomerService {
    CustomerDao dao;

    public CustomerService() {
        dao = new CustomerDao();
    }
    
    public List<Customer> findAll() {

        // Ejercicio 4
        /*List<Customer> customers = new ArrayList<Customer>();

        Customer customer1 = new Customer(1, "Cliente 1", "A11111111");
        Customer customer2 = new Customer(2, "Cliente 2", "B22222222");
        Customer customer3 = new Customer(3, "Cliente 3", "C22222222");
        Customer customer4 = new Customer(4, "Cliente 4", "D22222222");

        customers.add(customer1);
        customers.add(customer2);
        customers.add(customer3);
        customers.add(customer4);

        return customers;

        CustomerDao dao = new CustomerDao();

        return dao.findAll();*/

        // Ejercicio 6
        return this.dao.findAll();
    }

    public Customer read(int id) {
        return this.dao.read(id);
    }
}
