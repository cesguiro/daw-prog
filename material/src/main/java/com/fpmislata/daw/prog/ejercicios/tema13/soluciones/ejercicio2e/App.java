package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio2e;

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
            System.out.println("Tienes que tener al menos 18 años para pasar");
        } finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age){
        if(age < 18) {
            throw new RuntimeException();
        }
        
        return true;
    }


}
