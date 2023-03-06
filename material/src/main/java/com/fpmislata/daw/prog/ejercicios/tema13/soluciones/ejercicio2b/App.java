package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio2b;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            checkAge(age);
            System.out.println("Puedes pasar");
        } catch (Exception e) {
            System.out.println("Tienes que ser mayor de edad para pasar");
        } finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age) throws Exception{
        if(age < 18) {
            throw new Exception();
        }
        
        return true;
    }

}
