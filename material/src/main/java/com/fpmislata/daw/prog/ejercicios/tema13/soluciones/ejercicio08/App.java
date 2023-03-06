package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio08;

import java.util.InputMismatchException;
import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);

        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            System.out.println("Resultado = " + checkAge(age));                
        } catch (InputMismatchException e) {
            System.out.println("La edad tiene que ser un entero");
        } catch (RuntimeException e){
            System.out.println("No puedes pasar");
        } finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age){
        if(age < 18 || age > 65) {
            throw new RuntimeException();
        }
        
        return true;
    }


}
