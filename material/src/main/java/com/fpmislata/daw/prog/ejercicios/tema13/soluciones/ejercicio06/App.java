package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio06;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        System.out.print("Escribe tu edad: ");
        int age = reader.nextInt();
        System.out.println("Resultado = " + checkAge(age));
    }

    public static boolean checkAge(int age){
        if(age < 18) {
            throw new RuntimeException();
        }
        
        return true;
    }


}