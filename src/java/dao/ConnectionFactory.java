/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    //conexão com banco de dados, meu usuario root e senha root
    public Connection getConexao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/sis_anuncio", "root", "root");
        } catch (Exception erro) {
            throw new RuntimeException("Erro 1:" + erro);
        }
    }
}
