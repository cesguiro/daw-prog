package com.fpmislata.daw.prog.ejercicios.tema09.soluciones.back.persistence;

import java.util.ArrayList;
import java.util.List;

import com.fpmislata.daw.prog.ejercicios.tema09.soluciones.back.domain.Customer;

public class CustomerDao {

    // Ejercicio 6
    List<Customer> customers = new ArrayList<Customer>();


    // Ejercicio 6
    public CustomerDao(){
        Customer customer1 = new Customer(1, "Cliente 1", "A11111111");
        Customer customer2 = new Customer(2, "Cliente 2", "B22222222");
        Customer customer3 = new Customer(3, "Cliente 3", "C22222222");
        Customer customer4 = new Customer(4, "Cliente 4", "D22222222");

        this.customers.add(customer1);
        this.customers.add(customer2);
        this.customers.add(customer3);
        this.customers.add(customer4);        
    }
    
    public List<Customer> findAll() {
        
        // Ejercicio 5
        
        /*List<Customer> customers = new ArrayList<Customer>();

        Customer customer1 = new Customer(1, "Cliente 1", "A11111111");
        Customer customer2 = new Customer(2, "Cliente 2", "B22222222");
        Customer customer3 = new Customer(3, "Cliente 3", "C22222222");
        Customer customer4 = new Customer(4, "Cliente 4", "D22222222");

        customers.add(customer1);
        customers.add(customer2);
        customers.add(customer3);
        customers.add(customer4);
        
        return customers;*/

        // Ejercicio 6
        return this.customers;
    }

    public Customer read(int id) {
        for (Customer customer : this.customers) {
            if(customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }
}
