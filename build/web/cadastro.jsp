<%-- 
    Document   : cadastro
    Created on : 14/05/2021, 21:24:56
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Aúncio - Cadastro</title>
    </head>
    <body>
        <h1>Sistema Aúncio - Cadastro</h1>
        <form action="exec_cadastro.jsp" method="post">
            
            <label>Nome do Anúncio:</label>
            <input type="text" name="nome_anuncio" value="<%=request.getParameter("nome_anuncio")%>" placeholder="Nome" /> <br>
            
            <label>Cliente:</label>
            <input type="text" name="cliente" value="<%=request.getParameter("cliente")%>"/> <br>
            
            <label>Data Inicial:</label>
            <input type="date" name="data_inicio" value="<%=request.getParameter("data_inicio")%>"/> <br>
            
            <label>Data Termino:</label>
            <input type="date" name="data_termino" value="<%=request.getParameter("data_termino")%>"/> <br>
            
            <label>Valor do Investimento Diário:</label>
            <input type="text" name="investimento_dia" value="<%=request.getParameter("investimento_dia")%>"/> <br>
            
            <button type="submit">
                Cadastrar
            </button>
            
        </form>
    </body>
</html>
