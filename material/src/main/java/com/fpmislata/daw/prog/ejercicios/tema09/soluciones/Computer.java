package com.fpmislata.daw.prog.ejercicios.tema09.soluciones;

public class Computer extends Product{

    private HD hard_disk;
    private Memory memory;
    private CPU cpu;

    public Computer(int id, float price, HD hard_disk, Memory memory, CPU cpu) {
        super(id, price);
        this.hard_disk = hard_disk;
        this.memory = memory;
        this.cpu = cpu;
    }
    
    public HD getHard_disk() {
        return this.hard_disk;
    }

    public Memory getMemory(){
        return this.getMemory();
    }

    public CPU getCpu(){
        return this.cpu;
    }

    @Override
    public String toString() {
        return super.toString() + 
            ", Componentes: [HD: " + this.hard_disk + 
            ", Memoria: " + this.memory +
            ", CPU: " + this.cpu +
            "]}";
    }
}
