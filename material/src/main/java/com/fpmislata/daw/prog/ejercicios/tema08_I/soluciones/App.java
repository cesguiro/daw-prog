package com.fpmislata.daw.prog.ejercicios.tema08_I.soluciones;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        /*
         * Ejercicio 1
         */
        Coche coche = new Coche();        
        coche.marca = "Kia";
        coche.modelo = "Niro";
        coche.color = "Gris";
        coche.numeroBastidor = 123456;
        coche.velocidad = 0;

        /*System.out.println(String.format("Mi coche es un %s %s de color %s con número de bastidor %d", 
            coche.marca,
            coche.modelo,
            coche.color,
            coche.numeroBastidor)
        );*/

        /**
         * Ejercicio 2
         */
        //System.out.println(coche.toString());

        /**
         * Ejercicio 3
         */
        /*System.out.println("La velocidad es " + coche.velocidad);
        coche.acelerar();
        coche.acelerar();
        System.out.println("La velocidad es " + coche.velocidad);
        coche.frenar();
        System.out.println("La velocidad es " + coche.velocidad);*/

        /**
         * Ejercicio 4
         */
        /*System.out.println("La velocidad es " + coche.velocidad);
        coche.acelerar(15);
        System.out.println("La velocidad es " + coche.velocidad);
        coche.frenar(3);
        System.out.println("La velocidad es " + coche.velocidad);*/

        /**
         * Ejercicios 5 - 6
         */
        /* 
        Flota flota = new Flota();

        Coche coche1 = new Coche();
        coche1.marca = "Kia";
        coche1.modelo = "Niro";
        coche1.color = "Gris";
        coche1.numeroBastidor = 1;
        flota.anyadirCoche(coche1);
        
        Coche coche2 = new Coche();
        coche2.marca = "Renault";
        coche2.modelo = "Scenic";
        coche2.color = "Negro";
        coche2.numeroBastidor = 2;
        flota.anyadirCoche(coche2);
        
        Coche coche3 = new Coche();
        coche3.marca = "Ford";
        coche3.modelo = "Fiesta";
        coche3.color = "Blanco";
        coche3.numeroBastidor = 3;
        flota.anyadirCoche(coche3);

        flota.listaCoches();

        flota.eliminarCoche(2);
        flota.listaCoches();
        
        if(!flota.eliminarCoche(19)) {
            System.out.println("No se encuentra el coche en la flota");
        }
        */



        /*
         * Ejercicio 7
         */
         
        Flota flota = new Flota();
        Scanner reader = new Scanner(System.in);

        Coche coche1 = new Coche();
        coche1.marca = "Kia";
        coche1.modelo = "Niro";
        coche1.color = "Gris";
        coche1.numeroBastidor = 1;
        flota.anyadirCoche(coche1);
        
        Coche coche2 = new Coche();
        coche2.marca = "Renault";
        coche2.modelo = "Scenic";
        coche2.color = "Negro";
        coche2.numeroBastidor = 2;
        flota.anyadirCoche(coche2);
        
        Coche coche3 = new Coche();
        coche3.marca = "Ford";
        coche3.modelo = "Fiesta";
        coche3.color = "Blanco";
        coche3.numeroBastidor = 3;
        flota.anyadirCoche(coche3);

        //flota.listaCoches();
        System.out.println(flota.toString());
        
        /*int numeroBastidor;
        System.out.println("¿Qué número de bastidor tiene el coche que quieres eliminar?");
        numeroBastidor = reader.nextInt();
        if(flota.eliminarCoche(numeroBastidor)) {
            System.out.println("Se ha eliminado el coche con número de bastidor " + numeroBastidor);
        } else {
            System.out.println("No existe ningún coche con número de bastidor " + numeroBastidor);
        }
        flota.listaCoches();
        reader.close();
        */

        /**
         * Ejercicio 8 - 9 -10
         */
        /*Flota flota = new Flota();

        Coche coche1 = new Coche();
        coche1.marca = "Kia";
        coche1.modelo = "Niro";
        coche1.color = "Gris";
        coche1.numeroBastidor = 1;
        flota.anyadirCoche(coche1);
        
        Coche coche2 = new Coche();
        coche2.marca = "Renault";
        coche2.modelo = "Scenic";
        coche2.color = "Negro";
        coche2.numeroBastidor = 2;
        flota.anyadirCoche(coche2);
        
        Coche coche3 = new Coche();
        coche3.marca = "Ford";
        coche3.modelo = "Fiesta";
        coche3.color = "Blanco";
        coche3.numeroBastidor = 3;
        flota.anyadirCoche(coche3);

        Conductor conductor1 = new Conductor();
        conductor1.nombre = "Pepe";
        conductor1.dni = "11111111A";

        Conductor conductor2 = new Conductor();
        conductor2.nombre = "Cristina";
        conductor2.dni = "22222222B";*/


        /**
         * Ejercicio 8
         */
        
        /*conductor1.asignarCoche(1, flota);
        conductor1.mostrarCocheAsignado();*/
        
        

        /**
         * Ejercicio 9
        */
        /*conductor1.asignarCoche(coche3);
        conductor1.mostrarCocheAsignado();*/

        /**
         * Ejercicio 10
         */
        //conductor2.mostrarCocheAsignado();

        /**
         * Ejercicio 11
         */
        /*conductor1.eliminarCoche();
        conductor1.mostrarCocheAsignado();*/

        reader.close();
    }
}