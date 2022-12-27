package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public class Clothes extends Product{

    private String type;

    private String size;
    private String colour;
    
    public Clothes(int id, float price, String type, String size, String colour) {
        super(id, price);
        this.type = type;
        this.size = size;
        this.colour = colour;
    }

    public String getType() {
        return type;
    }

    public String getSize() {
        return size;
    }

    public String getColour() {
        return colour;
    }

    @Override
    public String toString(){
        return super.toString() + 
            ", Tipo: " + this.getType() +
            ", Tamaño: " + this.getSize() +
            ", Color: " + this.getColour() + 
            "}";
    }
    
}
