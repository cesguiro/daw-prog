package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio2a;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            if(checkAge(age)) {
                System.out.println("Puedes pasar");
            } else {
                System.out.println("Tienes que ser mayor de edad para pasar");
            }
        } catch (Exception e) {
            System.out.println("Algo ha salido mal");
        } finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age){
        if(age < 18) return false;
        
        return true;
    }

}

