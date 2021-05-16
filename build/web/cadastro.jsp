<%-- 
    Document   : cadastro
    Created on : 14/05/2021, 21:24:56
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Sistema Anúncio - Cadastro</title>
    </head>
    <body>
        <h1>Sistema Anúncio - Cadastro</h1>
        <form action="exec_cadastro.jsp" method="post">
            
            <label>Nome do Anúncio:</label>
            <input type="text" name="nome_anuncio" value="<%=request.getParameter("nome_anuncio")%>" placeholder="Nome" /> <br>
            
            <label>Cliente:</label>
            <input type="text" name="cliente" value="<%=request.getParameter("cliente")%>" placeholder="Cliente" /> <br>
            
            <label>Data Inicial:</label>
            <input type="date" name="data_inicio" value="<%=request.getParameter("data_inicio")%>" placeholder="Data Início" /> <br>
            
            <label>Data Termino:</label>
            <input type="date" name="data_termino" value="<%=request.getParameter("data_termino")%>" placeholder="Data Termino" /> <br>
            
            <label>Valor do Investimento Diário:</label>
            <input type="text" name="investimento_dia" value="<%=request.getParameter("investimento_dia")%>" placeholder="00,00 R$"/> <br>
            
            <button type="submit">
                Cadastrar
            </button>
            
        </form>
        <br>    
        <a href="index.jsp"><button>Pesquisar Anúncio</button></a>
            
    </body>
</html>
