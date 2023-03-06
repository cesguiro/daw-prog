package com.fpmislata.daw.prog.ejemplos.tema14;

import java.sql.Connection;

public class App {
    
    public static void main(String[] args) {
        try {
            Connection connection = DBUtil.open();
            System.out.println("Conexión establecida con la bbdd");
            DBUtil.close(connection);                
        } catch (Exception e) {
            System.out.println("Algo no ha funcionado como debería");
        }
    }
}
