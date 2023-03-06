package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio2c;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        System.out.print("Escribe tu edad: ");
        int age = reader.nextInt();
        /*checkAge(age);
        System.out.println("Puedes pasar");*/
    }

    public static boolean checkAge(int age) throws Exception{
        if(age < 18) {
            throw new Exception();
        }
        
        return true;
    }


}
