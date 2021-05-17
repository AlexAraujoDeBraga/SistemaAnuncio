<%-- 
    Document   : exec_cadastro
    Created on : 14/05/2021, 20:46:16
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Anuncio"%>
<%@page import="dao.AnuncioDAO"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Sistema Anúncio - Cadastro</title>
    </head>
    <body>
        <h1>Sistema Anúncio - Cadastro</h1>
        
        <%  // pegamos os dados do furmulario e chamamos função inerir de anuncioDao.java para salvar no banco
            try {
                 Anuncio a = new Anuncio();
                 AnuncioDAO aDAO = new AnuncioDAO();
                 a.setNome_anuncio(request.getParameter("nome_anuncio"));
                 a.setCliente(request.getParameter("cliente"));
                 a.setData_inicio(request.getParameter("data_inicio"));
                 a.setData_termino(request.getParameter("data_termino"));
                 a.setInvestimento_dia(Double.parseDouble(request.getParameter("investimento_dia")));
                 aDAO.inserir(a);
                 response.sendRedirect("index.jsp");
            } catch (Exception erro) {
                throw new RuntimeException("Erro 4:" + erro);
            }
        %>
        
    </body>
</html>
