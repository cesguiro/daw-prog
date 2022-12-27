package com.fpmislata.daw.prog.ejercicios.tema10.soluciones;

public enum CPUType {
    PENTIUM_GOLD_G7400(3.7f, "2/4"),
    RYZEN_3_4100(3.8f, "4/8"),
    CORE_I5_12400F(2.1f, "6/12"),
    RYZEN_7_5800X(3.8f, "8/16"),
    CORE_I7_12700KF(3.8f, "12/20");

    private float speed;
    private String threads;

    private CPUType(float speed, String threads){
        this.speed =speed;
        this.threads = threads;
    }

    public float getSpeed() {
        return this.speed;
    }

    public String getThreads(){
        return this.threads;
    }
}
