package com.fpmislata.daw.prog.ejercicios.tema11.soluciones.front;

import java.util.Scanner;

public class App {

    //Ejercicio 6
    private static Scanner reader = new Scanner(System.in);

    public static void main(String[] args) {
        //Scanner reader = new Scanner(System.in);
        int option;

        do {
            Menu.show();
            option = reader.nextInt();
            request(option);
        } while (option != 0);

        reader.close();
    }

    private static void request(int option) {
        int id = 0;

        if (option == 0) {
            System.exit(0);
        }

        //Ejercicio 6
        if (option == 2) {
            System.out.print("Introduzca el id del cliente: ");
            id = reader.nextInt();
        }
        //Ejercicio 1
        //System.out.println("Haciendo petición al servidor...");

        //Ejercicio 2
        String response = com.fpmislata.daw.prog.ejercicios.tema11.soluciones.back.App.response(option, id);
        System.out.println(response);

    }
}
