package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio04;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            System.out.println("Resultado = " + checkAge(age));
        } catch (Exception e) {
            System.out.println("Tienes que tener al menos 18 años para pasar");
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
