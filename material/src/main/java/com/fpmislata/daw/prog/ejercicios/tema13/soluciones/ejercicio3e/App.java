package com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3e;

import java.util.InputMismatchException;
import java.util.Scanner;

import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3e.exception.AgeLowerException;
import com.fpmislata.daw.prog.ejercicios.tema13.soluciones.ejercicio3e.exception.AgeTopException;

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
        } catch (AgeLowerException e){
            System.out.println(e.getMessage());
        } catch(AgeTopException e) {
            System.out.println(e.getMessage());
        } catch (Exception e){
            System.out.println("Ha ocurrido un error inesperado");
        }finally {
            reader.close();
        }
    }

    public static boolean checkAge(int age){
        if(age < 18){
            throw new AgeLowerException();
        }
        
        if(age > 65) {
            throw new AgeTopException();
        }
        
        return true;
    }


}