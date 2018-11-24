<%@page import="br.com.grupointegrado.model.Anuncio"%>
<%@page import="java.util.List"%>
<%@page import="br.com.grupointegrado.model.Categoria"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <%
        List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
        List<Anuncio> Listaobj = (List<Anuncio>) request.getAttribute("all-anuncios");
        String erro = (String)request.getAttribute("mensagem-erro");
    %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Anúncios de Veículos</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/fontawesome.all.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style-default.css">
        <link rel="stylesheet" type="text/css" href="CSS/style-index.css">
        <script>
            function abrirAnuncio(anuncioId) {
                window.location = "anuncio?anuncio=" + anuncioId;
            }
        </script>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <a class="navbar-brand" href="index.html">VEÍCULOS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index">Início</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="anunciar">Anunciar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contato">Contato</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <main class="container-fluid">
            <div class="conteudo col-sm-12 col-md-11 col-lg-10">

                <div class="row">
                    <div class="menu-esquerdo col-md-auto">
                        <nav>
                            <form>
                                <div class="input-group input-group-sm mb-3">
                                    <input type="text" class="form-control" placeholder="Busca por palavras chave"
                                           aria-label="Busca por palavras chave" aria-describedby="button-search">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-primary" title="Buscar" type="submit" id="button-search">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <ul class="list-group list-group-flush">
                                <% for (Categoria cat : categorias) {%>
                                <li class="list-group-item">
                                    <a href="?categoria=<%=cat.getID()%>"><%=cat.getCat()%></a>
                                </li>
                                <%}%>
                            </ul>
                        </nav>
                    </div>
                    <div class="col">
                        <%if(erro == null){%>
                        <h3>Veículos anunciados</h3>         
                           <%for (Anuncio obj : Listaobj) {%>
                        <table class="table table-hover">
                            <tr class="tabela-veiculos-linha" onclick="abrirAnuncio(<%= obj.getID()%>)">
                                <td class="tv-col-imagem">
                                    <img src="IMG/<%=obj.getCaminhoImagem()%>">
                                </td>
                                <td class="informacoes-anuncio">
                                    <div class="row">
                                        <div class="col descricao-anuncio">
                                            <p>
                                                <%= obj.getNome()%> - <%=obj.getKM()%> KM
                                            </p>
                                        </div>
                                        <div class="col-sm-auto valor-anuncio">
                                            <p>R$ <%=obj.getValor()%></p>
                                        </div>
                                        <div class="col-sm-auto data-hora-anuncio">
                                            <p>
                                                10/09/2018 <br />
                                                17:55
                                            </p>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <%}
                              }
                            else{%>
                            <h3>Nenhum anuncio encontrado !</h3>
                                <%}%>
<!--                            </tr>
-->                           <!--
                            <tr class="tabela-veiculos-linha" onclick="abrirAnuncio(4)">
                                <td class="tv-col-imagem">
                                    <img src="IMG/782804083333935.jpg">
                                </td>
                                <td class="informacoes-anuncio">
                                    <div class="row">
                                        <div class="col descricao-anuncio">
                                            <p>
                                                Ford Ranger - 34.000 km | Câmbio: automático | Gasolina
                                            </p>
                                        </div>
                                        <div class="col-sm-auto valor-anuncio">
                                            <p>R$ 119.990</p>
                                        </div>
                                        <div class="col-sm-auto data-hora-anuncio">
                                            <p>
                                                10/09/2018 <br />
                                                17:55
                                            </p>
                                        </div>
                                    </div>
                                </td>-->
                            </tr>
                        </table>

                    </div>
                </div>

            </div>
        </main>

        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts-default.js"></script>
    </body>

</html>