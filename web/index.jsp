<%-- 
    Document   : index
    Created on : 14/05/2021, 22:00:50
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Anuncio"%>
<%@page import="dao.AnuncioDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Sistema Anúncio</title>
    </head>
    <body>
        <h1>Sistema Anúncio - Home</h1>
        <br>
        <form action="consultar.jsp" method="post">
            <label>Digite o nome do Anúncio:</label><br>
            <input type="text" value="" name="nome_anuncio" placeholder="..."/>
            <button type="submit">Pesquisar</button>
        </form>
        <hr>
        <br>
        <br>
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a>
        
    </body>
</html>
