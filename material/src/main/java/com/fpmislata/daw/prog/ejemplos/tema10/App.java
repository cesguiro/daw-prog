package com.fpmislata.daw.prog.ejemplos.tema10;

public class App {
    
    public static void main(String[] args) {
        
        Kia niro = new Kia(KiaModel.NIRO);
        Kia sportage = new Kia(KiaModel.SPORTAGE);
        Kia xceed = new Kia(KiaModel.XCEED);

        System.out.println(niro);
        System.out.println(sportage);    
        System.out.println(xceed);
    }
}
