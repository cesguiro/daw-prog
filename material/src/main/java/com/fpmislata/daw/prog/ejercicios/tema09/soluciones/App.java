package com.fpmislata.daw.prog.ejercicios.tema09.soluciones;

import java.util.ArrayList;
import java.util.List;

public class App {
    
    private static List<Product> products = new ArrayList<Product>();
    public static void main(String[] args) {
        
        Product book1 = new Book(1, 12.35f, "El nombre de la rosa", "Umberto eco");
        Product book2 = new Book(2, 25.99f, "La insoportable levedad del ser", "Milan Kundera");
        Product book3 = new Book(3, 19.50f, "1Q84", "Haruki Murakami");
        Product clothes1 = new Clothes(4, 34.00f, "Pantalón", "XL", "Negro");
        Product clothes2 = new Clothes(5, 48.75f, "Chaqueta", "M", "Blanco");

        App.addProdcut(book1);
        App.addProdcut(book2);
        App.addProdcut(book3);
        App.addProdcut(clothes1);
        App.addProdcut(clothes2);

        HD hard_disk1 = new HD("SDD_2.5", 128);
        Memory memory1 = new Memory(128);
        CPU cpu1 = new CPU("Intel Core i5-1135G7", 4.2f);
        Product computer1 = new Computer(6, 875.00f, hard_disk1, memory1, cpu1);
        App.addProdcut(computer1);
        

        App.showProducts(3);


    }

    public static void addProdcut(Product product) {
        App.products.add(product);
    }

    /*
     * 0 - Todos 
     * 1 - Ropa
     * 2 - Libros
     * 3 - Ordenadores
     */
    public static void showProducts(int type) {
        for (Product product : products) {
            if(type == 1 && product.getClass() == Clothes.class) {
                System.out.println(product);
            } else if(type == 2 && product.getClass() == Book.class) {
                System.out.println(product);
            } else if(type == 3 && product.getClass() == Computer.class) {
                System.out.println(product);
            }else if(type == 0){
                System.out.println(product);
            }
        }
    }

}
