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

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Anúncio - Consulta</title>
    </head>
    
        <h1>Sistema Anúncio - Consulta por Nome</h1>
        <%
            //código que traz consulta
            Double retorno_consulta;
            String dataInicial;
            String dataTermino;
            int retornoCalculoDias;
          
            
            try {
                out.print("<hr>");
                out.print("<h3>Resultado da Pesquisa por Nome do Anúncio</h3>");
                out.print("<table>");
                out.print("<tr>");
                
                AnuncioDAO aDAO = new AnuncioDAO(); 
                //pegamos o parametro passado de index.jsp e vemos se não é vazio
                if(request.getParameter("nome_anuncio") != ""){
                    //listar anuncio se não for vazio
                    ArrayList<Anuncio> lista = aDAO.listarNomeAnuncio(request.getParameter("nome_anuncio"));
                    for (int num = 0; num < lista.size(); num++){
                        
                        //pega valor investimento
                        retorno_consulta = lista.get(num).getInvestimento_dia();
                        //pega data inicial
                        dataInicial = lista.get(num).getData_inicio();
                        //pega data final
                        dataTermino = lista.get(num).getData_termino();
                        //chama função que calculo diferença entre as datas
                        retornoCalculoDias = lista.get(num).retornaDias(dataInicial, dataTermino);
                        out.print("<tr>");
                        //chama função que multiplica valor de investimento com diferença de dias, assim saberemos
                        //quantas pessoas no total virão, clicaram e compartilharam
                        out.print("</td>"+lista.get(num).retornaCalculo(retorno_consulta, retornoCalculoDias)+"</td>");
                        out.print("<br></td> Total de dias do Anúncio: <strong>"
                                  +retornoCalculoDias+"</strong></td>");
                        out.print("</tr>");
                        
                        
                    }
                }    
                
                out.print("<hr>");
                out.print("</tr>");
                out.print("</table>");
                
                
            } catch (Exception erro) {
                throw new RuntimeException("Erro 5:" + erro);
            }
        %>
                
                <h3>Pesquisar dados por intervalo de datas:</h3>
                <br>
                <!--formulario para pesquisar por data-->
                <form action="exec_calculo_data.jsp" method="post">
                <label>Data Inicial:</label>
                <input type="text" name="nome_anuncio" value="<%=request.getParameter("nome_anuncio")%>" 
                       readonly="1" style="display:none;"/>
                <input type="date" name="data_do_inicio"/>
                <label> Data Termino:</label>
                <input type="date" name="data_do_termino"/>
                <button type="submit">Pesquisar</button>
                </form>
                <hr>       
        <br>
        <br>
        <a href="index.jsp"><button>Pesquisar Outro Anúncio</button></a>
        <a href="cadastro.jsp"><button>Cadastrar Anúncio</button></a>
    

