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
        <!--formulario de cadastro-->
        <form action="exec_cadastro.jsp" method="post">
            
            <label>Nome do Anúncio:</label>
            <br>
            <input type="text" name="nome_anuncio" placeholder="Nome" /> <br>
            <hr> 
            <label>Cliente:</label>
            <br>
            <input type="text" name="cliente" placeholder="Cliente" /> <br>
            <hr>
            <label>Data Inicial:</label>
            <br>
            <input type="date" name="data_inicio" id="dateDefault" placeholder="Data Início" /> <br>
            <hr>
            <label>Data Termino:</label>
            <br>
            <input type="date" name="data_termino" id="dateDefault2" placeholder="Data Termino" /> <br>
            <hr>
            <label>Valor do Investimento Diário:</label>
            <br>
            <p style="color:red;">Para evitar erro não inserir valores com vírgula(,) inserir somente com ponto(.)</p>
            <input type="text" name="investimento_dia" placeholder="00.00 R$"/> <br>
            <hr>
            <br>
            <button type="submit">
                Cadastrar
            </button>
            
        </form>
        <br>    
        <a href="index.jsp"><button>Pesquisar Anúncio</button></a>
        <!--script js para pegar data atual e colocar nos inputs datas-->
        <script>
            function setInputDate(_id){
                var _dat = document.querySelector(_id);
                var hoy = new Date(),
                    d = hoy.getDate(),
                    m = hoy.getMonth()+1, 
                    y = hoy.getFullYear(),
                    data;

                if(d < 10){
                    d = "0"+d;
                };
                if(m < 10){
                    m = "0"+m;
                };

                data = y+"-"+m+"-"+d;
                console.log(data);
                _dat.value = data;
            };

            setInputDate("#dateDefault");
            setInputDate("#dateDefault2");
        </script>    
        
    </body>
</html>
