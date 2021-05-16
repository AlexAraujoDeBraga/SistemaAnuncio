<%-- 
    Document   : consultar
    Created on : 14/05/2021, 20:47:02
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
        <title>Sistema Anúncio - Consulta</title>
    </head>
    <body>
        <h1>Sistema Anúncio - Consulta</h1>
        <%
            try {
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Resultado da Pesquisa</th>");
                AnuncioDAO aDAO = new AnuncioDAO(); 
                
                if(request.getParameter("nome_anuncio") != ""){
                    //listarNomeAnuncio
                    ArrayList<Anuncio> lista = aDAO.listarNomeAnuncio(request.getParameter("nome_anuncio"));
                    for (int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>Nome do Anúncio</td>");
                        out.print("<td>| Valor Total de Investimento</td>");
                        out.print("</tr>");
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getNome_anuncio()+"</td>");
                        out.print("<td>| "+lista.get(num).getInvestimento_dia()+" R$</td>");
                        out.print("</tr>");
                    }
                }
                
                out.print("</tr>");
                out.print("</table>");
                
            } catch (Exception erro) {
                throw new RuntimeException("Erro 5:" + erro);
            }
        %>
        
        <a href="index.jsp"><button>Pesquisar Outro Anúncio</button></a>
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a>
    </body>
</html>
