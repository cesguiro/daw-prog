package com.fpmislata.daw.prog.ejemplos.tema13;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Excepciones {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        int dividendo, divisor;
 
        /*System.out.print("Dividendo: ");
        dividendo = reader.nextInt();
        System.out.print("Divisor: ");
        divisor = reader.nextInt();*/
 
        //System.out.println("Resultado: " + (dividendo / divisor));
        /*try {
            System.out.println("Resultado: " + (dividendo / divisor));            
        } catch (Exception e) {
            System.out.println("Error en la división");
        } /*finally {
            System.out.println("Este código se ejecutará siempre");
        }*/

        try {
            System.out.print("Dividendo: ");
            dividendo = reader.nextInt();
            System.out.print("Divisor: ");
            divisor = reader.nextInt();
            System.out.println("Resultado: " + (dividendo / divisor));            
        } catch (InputMismatchException e) {
            System.out.println("Entrada incorrecta");
        } catch (ArithmeticException e) {
            System.out.println("División por 0");
        } catch (Exception e) {
            System.out.println("Error en la división");
        }
    }

}
