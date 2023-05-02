package com.fpmislata.daw.prog.ejemplos.tema15;

import java.io.*;
import java.net.URL;

public class Files {
    public static void main(String[] args) {
        /* Windows:
            FileReader fileReader = new FileReader("C:\\programas\\fichero.txt");
         */
        /* Linux:
            FileReader fileReader = new FileReader("/home/usuario/fichero.txt");
         */
        // Al estar dentro de un proyecto, el path donde se ejecuta no es el mismo que donde está definida la clase
        String path = System.getProperty("user.dir") + "/src/main/java/com/fpmislata/daw/prog/ejemplos/tema15/";
        try (FileReader fileReader = new FileReader(path + "products.txt")) {
            String text = "";
            int ascii_char = fileReader.read();
            while (ascii_char != -1) {
                text  += (char) ascii_char;
                ascii_char = fileReader.read();
            }
            System.out.println(text);
        } catch (FileNotFoundException e) {
            System.out.println("No se encuentra el fichero");
        } catch (IOException e) {
            System.out.println("Error abriendo el fichero");
        } catch (Exception e) {
            System.out.println("Algo ha salido mal");
        }
    }
}
