package com.fpmislata.daw.prog.ejercicios.tema08_III.soluciones;

import java.util.UUID;

public class GeneradorId {
    
    private UUID uuid;

    private static GeneradorId instance;

    private GeneradorId(){
        this.uuid = UUID.randomUUID();
    }

    public static GeneradorId getGenerador(){
        GeneradorId instance = (GeneradorId.instance != null)? GeneradorId.instance: new GeneradorId();
        return instance;
    }

    public UUID getUuid() {
        this.uuid = UUID.randomUUID();
        return this.uuid;
    }

}
