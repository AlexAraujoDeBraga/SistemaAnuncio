<%-- 
    Document   : consultar
    Created on : 14/05/2021, 20:47:02
    Author     : Alex
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
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
            Double retorno_consulta;
            String dataInicial;
            String dataTermino;
            int retornoCalculoDias;
          
            
            try {
                out.print("<table>");
                out.print("<tr>");
                
                AnuncioDAO aDAO = new AnuncioDAO(); 
                
                if(request.getParameter("nome_anuncio") != ""){
                    //listarNomeAnuncio
                    ArrayList<Anuncio> lista = aDAO.listarNomeAnuncio(request.getParameter("nome_anuncio"));
                    for (int num = 0; num < lista.size(); num++){
                        /*out.print("<tr>");
                        out.print("<td>Nome do Anúncio</td>");
                        out.print("<td>| Valor Total de Investimento</td>");
                        out.print("</tr>");
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getNome_anuncio()+"</td>");
                        out.print("<td>| "+lista.get(num).getInvestimento_dia()+" R$</td>");
                        out.print("</tr>");*/
                        
                        
                        retorno_consulta = lista.get(num).getInvestimento_dia();
                        dataInicial = lista.get(num).getData_inicio();
                        dataTermino = lista.get(num).getData_termino();
                        retornoCalculoDias = lista.get(num).retornaDias(dataInicial, dataTermino);
                        out.print("<tr>");
                        out.print("</td>"+lista.get(num).retornaCalculo(retorno_consulta, retornoCalculoDias)+"</td>");
                        out.print("<br></td> Total de dias do Anúncio: <strong>"
                                  +retornoCalculoDias+"</strong></td>");
                        out.print("</tr>");
                        
                        
                    }
                }    
                
                out.print("<th>Resultado da Pesquisa</th>");
                out.print("</tr>");
                out.print("</table>");
                
            } catch (Exception erro) {
                throw new RuntimeException("Erro 5:" + erro);
            }
        %>
        
        <!--
        
        data_start.setTime(formato.parse(dataInicial));
        data_end.setTime(formato.parse(dataTermino));
                            
                        
        int dias = (data_end.get(Calendar.DAY_OF_YEAR) - data_start.get(Calendar.DAY_OF_YEAR)) + 1;
        
        -->
        
        <a href="index.jsp"><button>Pesquisar Outro Anúncio</button></a>
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a>
    </body>
</html>
