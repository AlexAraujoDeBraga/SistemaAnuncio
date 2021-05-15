/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


public class Anuncio {
    private String nome_anuncio;
    private String cliente;
    private String data_inicio;
    private String data_termino;
    private double investimento_dia;

    public String getNome_anuncio() {
        return nome_anuncio;
    }

    public void setNome_anuncio(String nome_anuncio) {
        this.nome_anuncio = nome_anuncio;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(String data_inicio) {
        this.data_inicio = data_inicio;
    }

    public String getData_termino() {
        return data_termino;
    }

    public void setData_termino(String data_termino) {
        this.data_termino = data_termino;
    }

    public double getInvestimento_dia() {
        return investimento_dia;
    }

    public void setInvestimento_dia(double investimento_dia) {
        this.investimento_dia = investimento_dia;
    }
    
    
    
}
