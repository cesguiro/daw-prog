package com.fpmislata.daw.prog.ejercicios.tema08_II.soluciones;

public class App {
    public static void main(String[] args) throws Exception {
        Coche coche1 = new Coche();

        coche1.setMarca("Kia");
        coche1.setModelo("Niro");
        coche1.setNumeroBastidor(1);
        coche1.setColor("gris");

        System.out.println(coche1.toString());

        Coche coche2 = new Coche("Ford", "Fiesta", "blanco", 2);
        System.out.println(coche2.toString());
    }
}
