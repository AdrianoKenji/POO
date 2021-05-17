/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package horarios;

/**
 * Classe para manipulação de horários.
 * @author adria
 */
public class Horario {
    
    private int hora;
    private int minuto;
    private int segundo;
    
    public Horario(int hora, int minuto, int segundo){
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }
    
    public String getHorario() {
        String out = "";
        if(hora<10) {
            out += "0";
        }
        out += hora+":";
        if(minuto<10){
            out += "0";
        }
        out += minuto+":";
        if(segundo<10){
            out += "0";
        }
        out += segundo; 
        return out;
    }
}
