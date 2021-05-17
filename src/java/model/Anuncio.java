/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Anuncio {
    private String nome_anuncio;
    private String cliente;
    private String data_inicio;
    private String data_termino;
    private double investimento_dia;
    //variáveis para o calculo de anúncio visto, compartilhado e clicado
    double valor_investido;
    double resultado_invest;
    int resultado_cliques;
    int resultado_compartilhamento;
    int resultado_mais_pessoas;
    int soma_pessoas = 0;
    int soma_cliques = 0;
    int soma_compart = 0;
    
    //função para retornar a quantidade de pessoas que verão o anúncio original com o valor investido
    public static double resultado_invest(double investimento){
            double retorno;
            retorno = (investimento*100) * 0.3;
            return retorno;
    }
    // função que faz o calculo de quantas pessoas irão ver o anúncio
    public static int calculadora_cliques(int quant_p){
            int porcentagem_clique;
            porcentagem_clique = (int) (quant_p * 0.12);
            return porcentagem_clique;
    }
    //função para calcular compartilhamentos
    public static int calculadora_comp(int quant_clique){
            double necess_clique = 6.6;
            int compara = 0;
            int soma = -1;
            int comp;

            for(int x = 0; compara < quant_clique;x++){
                    compara = compara + (int) necess_clique;
                    soma = soma + 1;
            }

            comp = soma;

            return comp;
    }
    //função para calcular novas vizualizações
    public static int calculadora_mais_p(int quant_comp){
            int result;

            result = quant_comp * 40;

            return result;
    }

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
    //função para pegramos intervalo de datas para que depois multiplicamos o numero de dias pelo valor investido
    // assim saberemos quantas pessoas por dia virão o anuncio juntando quem viu o principal e quem os compartilhados
    public int retornaDias(String data_start, String data_end){
        
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        Calendar data_first = Calendar.getInstance();
        Calendar data_last = Calendar.getInstance();
        
        try {
            data_first.setTime(formato.parse(data_start));
            data_last.setTime(formato.parse(data_end));
        } catch (Exception ex) {}
        
        int dias = (data_last.get(Calendar.DAY_OF_YEAR) - data_first.get(Calendar.DAY_OF_YEAR)) + 1;
        
        return dias;
    }
    //função para calcularmos quantas pessoas verão o anúncio juntando quem viu o origial e compartilhamentos
    public String retornaCalculo(Double valor, int dias_calculo){
        String retorno = "";
        //dias calculo e da outra função
        // com o intervalo de datas multiplicamos o numero de dias pelo valor investido
       //assim saberemos quantas pessoas por dia virão o anuncio juntando quem viu o principal e quem os compartilhado
        valor_investido = valor * dias_calculo;
        //chamando função para saber quantidade de pessoas que verão o anúncio pelo valor investido
        resultado_invest = resultado_invest(valor_investido);

        soma_pessoas = (int) resultado_invest;
        
        for(int cont = 1; cont <= 4; cont++){
			
        resultado_cliques = calculadora_cliques((int) resultado_invest);
        resultado_compartilhamento = calculadora_comp(resultado_cliques);
        resultado_mais_pessoas = calculadora_mais_p(resultado_compartilhamento);

        resultado_invest = resultado_mais_pessoas;
        
        if(resultado_invest >= 0){
            soma_pessoas = soma_pessoas + resultado_mais_pessoas;
            soma_cliques = soma_cliques + resultado_cliques;
            soma_compart = soma_compart + resultado_compartilhamento;
        }
        }
        
        retorno = "<br> Nome do Anúncio: <strong>" +nome_anuncio+  
                "</strong><br> Investimento total :<strong>" + valor_investido + " R$ <br>"
                + "</strong> Quantidade Máxima de Visualizações: <strong>" + soma_pessoas + "</strong><br>"
                + " Quantidade Máxima de Cliques: <strong>" + soma_cliques + "</strong>"
                + "<br> Quantidade Máxima de Compartilhamentos: <strong>" + soma_compart + "</strong>";
        
        return retorno;
    }

    public void setInvestimento_dia(double investimento_dia) {
        this.investimento_dia = investimento_dia;
    }

    
    
}
