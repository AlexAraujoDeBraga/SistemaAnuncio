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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Anúncio</title>
    </head>
    <body>
        <form action="consultar.jsp" method="post">
            <label>Digite o nome do Anúncio:</label><br>
            <input type="text" value="" name="nome_anuncio" placeholder="..."/>
            <button type="submit">Pesquisar</button>
        </form>
        <br>
        
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a>
        
    </body>
</html>
