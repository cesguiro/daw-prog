package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public class Product {
 
    private int id;
    private float price;
    
    public Product(int id, float price) {
        this.id = id;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public float getPrice() {
        return price;
    }

    @Override
    public String toString(){
        return "Producto:{" +
            "Id: " + this.getId() + 
            ", Precio: " + this.getPrice();
    }
}
