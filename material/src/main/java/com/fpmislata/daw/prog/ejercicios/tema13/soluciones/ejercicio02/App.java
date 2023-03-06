package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio02;

import java.util.Scanner;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        try {
            System.out.print("Escribe un número: ");
            int number = reader.nextInt();
            System.out.println("Resultado = " + number*2);                
        } catch (Exception e) {
            System.out.println("Algo ha salido mal");
        } finally {
            reader.close();
        }
    }
}

