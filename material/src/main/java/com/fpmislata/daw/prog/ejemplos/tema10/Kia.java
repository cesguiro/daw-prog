package com.fpmislata.daw.prog.ejemplos.tema10;

public class Kia {

    KiaModel model;

    public Kia(KiaModel model) {
        this.model = model;
    }

    public KiaModel getmodel() {
        return model;
    }

    public String toString(){
        return "Kia " + this.getmodel() + 
            " - Motor: " + this.getmodel().getEngine();
    }
}
