Projeto web java com jsp - Sistema Anúncio

- Programas Utilizados:
Servidor: apache-tomcat-8.5.15
IDE: Netbeans 8.2
Banco de Dados: MySql Workbench 8.0 CE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- A configuração da conexão do banco de dados está no arquivo ConnectionFactory.java nos caminhos abaixo:
Caminho se for no Netbeans: Pacotes de Códigos-fonte->dao->ConnectionFactory.java
Caminho se for na pasta raiz do projeto no Windows: SistemaAnuncio\src\java\dao\ConnectionFactory.java
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Ao importar projeto, iniciar servidor tomcat e depois rodar a aplicação no F6(se for no netbeans) 
ou abrir uma das URL abaixo:

http://localhost:8080/SistemaAnuncio/
http://localhost:8080/SistemaAnuncio/index.jsp

http://localhost:8080/SistemaAnuncio/index.jsp -> página inicial para consultar anúncio
http://localhost:8080/SistemaAnuncio/cadastro.jsp -> página para cadastrar anúncio

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- Banco de Dados 

o arquivo sis_anuncio_anuncio.sql é o import do meu banco caso queira importar, se não pode
gerar um novo banco conforme abaixo:

Criando banco de dados:
CREATE DATABASE sis_anuncio CHARACTER SET utf8 COLLATE utf8_swedish_ci;

Criando a tabela:
CREATE TABLE anuncio (nome_anuncio varchar(200) NOT NULL, cliente varchar(200) NOT NULL, 
                                             data_inicio varchar(10) NOT NULL, data_termino varchar(10) NOT NULL, 
                                             investimento_dia DOUBLE NOT NULL);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
