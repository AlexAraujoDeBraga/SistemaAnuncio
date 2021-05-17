/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Anuncio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AnuncioDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Anuncio> lista = new ArrayList<>();
    
    public AnuncioDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    //função para inserir dados no banco
    public void inserir(Anuncio anuncio){
        String sql = "INSERT INTO anuncio (nome_anuncio, cliente, data_inicio, data_termino, investimento_dia) "
                     + "VALUES (?,?,?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, anuncio.getNome_anuncio());
            stmt.setString(2, anuncio.getCliente());
            stmt.setString(3, anuncio.getData_inicio());
            stmt.setString(4, anuncio.getData_termino());
            stmt.setDouble(5, anuncio.getInvestimento_dia());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2:" + erro);
        }
    }
    // função para listar anúncios conforme o valor que será o nome
    public ArrayList<Anuncio> listarNomeAnuncio(String valor){
        String sql = "SELECT * FROM anuncio WHERE nome_anuncio LIKE '%"+valor+"%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Anuncio anuncio = new Anuncio();
                anuncio.setNome_anuncio(rs.getString("nome_anuncio"));
                anuncio.setData_inicio(rs.getString("data_inicio"));
                anuncio.setData_termino(rs.getString("data_termino"));
                anuncio.setInvestimento_dia(rs.getDouble("investimento_dia"));
                lista.add(anuncio);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3:" + erro);
        }
        return lista;
    }
    
    
    
    
    
}
