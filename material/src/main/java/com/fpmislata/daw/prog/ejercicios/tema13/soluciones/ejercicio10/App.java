package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio10;

import java.util.InputMismatchException;
import java.util.Scanner;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio10.exception.ageLowerException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio10.exception.ageTopException;

public class App {
    
    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);

        try {
            System.out.print("Escribe tu edad: ");
            int age = reader.nextInt();
            System.out.println("Resultado = " + checkAge(age));                
        } catch (InputMismatchException e) {
            System.out.println("La edad tiene que ser un entero");
        } catch (ageLowerException e){
            System.out.println(e.getMessage());
        } catch(ageTopException e) {
            System.out.println(e.getMessage());
        }finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age) throws ageTopException, ageLowerException{
        if(age < 18){
            throw new ageLowerException();
        }
        
        if(age > 65) {
            throw new ageTopException();
        }
        
        return true;
    }


}