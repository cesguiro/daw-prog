package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3b;

import java.util.InputMismatchException;
import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);

        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            checkAge(age);
            System.out.println("Puedes pasar");              
        } catch (InputMismatchException e) {
            System.out.println("La edad tiene que ser un entero");
        } catch (RuntimeException e){
            System.out.println(e.getMessage());
        } finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age){
        if(age < 18){
            throw new RuntimeException("Tienes que ser mayor de edad para pasar");
        }
        
        if(age > 65) {
            throw new RuntimeException("Tienes que tener menos de 65 años para pasar");
        }
        
        return true;
    }


}