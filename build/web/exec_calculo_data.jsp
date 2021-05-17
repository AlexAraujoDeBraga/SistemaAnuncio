<%-- 
    Document   : exec_calculo_data
    Created on : 16/05/2021, 11:18:39
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Anúncio</title>
    </head>
    <body>
        <h1>Sistema Anúncio - Cosulta Por Data</h1>
        <%
        
        if(request.getParameter("nome_anuncio") != "" && request.getParameter("nome_anuncio") != null){
            out.print(request.getParameter("nome_anuncio"));
        }
        
        %>
        
        <p><strong>Parte de Consulta por data Não Finalizada</strong></p>
        
        <br>
        <br>
        <a href="index.jsp"><button>Pesquisar Outro Anúncio</button></a>
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a
        
    </body>
</html>
