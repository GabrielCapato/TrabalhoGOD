<%@page import="br.com.grupointegrado.model.Anuncio"%>
<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Anunciar Ve�culo</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/fontawesome.all.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style-default.css">
        <link rel="stylesheet" type="text/css" href="CSS/style-anunciar.css">


        <script>
            function validarFormulario() {
                var inputTitulo = document['form-anunciar']['anuncio-titulo'];
                var inputAnoFabricacao = document['form-anunciar']['anuncio-ano-fabricacao'];
                var inputAnoModelo = document['form-anunciar']['anuncio-ano-modelo'];
                var inputQuilometragem = document['form-anunciar']['anuncio-quilometragem'];
                var inputValor = document['form-anunciar']['anuncio-valor'];
                var inputCombustivel = document['form-anunciar']['anuncio-combustivel'];
                var inputCategoria = document['form-anunciar']['anuncio-categoria'];
                var inputImagem = document['form-anunciar']['anuncio-imagem'];
                var inputDescricao = document['form-anunciar']['anuncio-descricao'];

                inputTitulo.classList.add('is-invalid');
                inputAnoFabricacao.classList.add('is-invalid');
                inputAnoModelo.classList.add('is-invalid');
                inputQuilometragem.classList.add('is-invalid');
                inputValor.classList.add('is-invalid');
                inputCombustivel.classList.add('is-invalid');
                inputCategoria.classList.add('is-invalid');
                inputImagem.classList.add('is-invalid');
                inputDescricao.classList.add('is-invalid');

                return false;
            }
        </script>

    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <a class="navbar-brand" href="index.html">VE�CULOS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index">In�cio</a>
                        </li>
                        <li class="nav-item active">
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
                <h3>Preencha os dados do an�ncio</h3>
                <div class="dropdown-divider"></div>

                <form name="form-anunciar" method="POST" >
                    <div class="form-row">
                        <div class="col-md-8 col-lg-7 col-xl-6">
                            <div class="form-group">
                                <label for="anuncio-titulo">T�tulo</label>
                                <input type="text" class="form-control" name="nome" id="titulo" placeholder="Passat TSI 211CV Revisado 3� Dono">
                                <div class="invalid-feedback">
                                    Informe o t�tulo do an�ncio.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                            <div class="form-group">
                                <label for="anuncio-ano-fabricacao">Ano de fabrica��o</label>
                                <input type="number" step="1" name="anoFabricacao" class="form-control" id="anoFabricacao" placeholder="2016">
                                <div class="invalid-feedback">
                                    Informe o ano de fabrica��o do ve�culo.
                                </div>
                            </div>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                            <div class="form-group">
                                <label for="anuncio-ano-modelo">Ano do modelo</label>
                                <input type="number" step="1" name="anoModelo" class="form-control" id="anoModelo" placeholder="2017">
                                <div class="invalid-feedback">
                                    Informe o ano do modelo do ve�culo.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-6 col-md-4 col-lg-3">
                            <div class="form-group">
                                <label for="anuncio-quilometragem">Quilometragem</label>
                                <div class="input-group">
                                    <input type="number" step="1" name="km"class="form-control" id="quilometragem"
                                           placeholder="34000">
                                    <div class="input-group-append">
                                        <span class="input-group-text">Km</span>
                                    </div>
                                    <div class="invalid-feedback">
                                        Informe a quilometragem do ve�culo
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3">
                            <div class="form-group">
                                <label for="anuncio-valor">Valor</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">R$</span>
                                    </div>
                                    <input type="number" step="1" class="form-control" name="valor" id="valor" placeholder="119990">
                                    <div class="input-group-append">
                                        <span class="input-group-text">,00</span>
                                    </div>
                                    <div class="invalid-feedback">
                                        Informe o valor do ve�culo.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-md-8 col-lg-7 col-xl-6">
                            <div class="form-group">
                                <!-- Os tipos de combust�veis podem ser fixados no c�digo -->
                                <label for="anuncio-combustivel">Tipo de combust�vel</label>
                                <select class="form-control" id="combustivel" name="combustivel">
                                    <option value="1">Gasolina</option>
                                    <option value="2">Etanol</option>
                                    <option value="3">Flex</option>
                                    <option value="4">G�s</option>
                                    <option value="5">D�esel</option>
                                </select>
                                <div class="invalid-feedback">
                                    Selecione o tipo de combust�vel do ve�culo.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-md-8 col-lg-7 col-xl-6">
                            <div class="form-group">
                                <!-- As categorias devem ser carregadas do banco de dados -->
                                <label for="anuncio-categoria">Categoria</label>
                                <select class="form-control" name="categoria" id="categoria">
                                    <option value="1">Carros, vans e utilit�rios</option>
                                    <option value="2">Motos</option>
                                    <option value="3">Caminh�es</option>
                                    <option value="4">�nibus</option>
                                    <option value="5">Barcos e aeronaves</option>
                                </select>
                                <div class="invalid-feedback">
                                    Selecione a categoria do ve�culo.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-8 col-xl-7">
                            <div class="form-group">
                                <label for="anuncio-imagem">Imagem</label>
                                <div class="custom-file">
                                    <input type="file" accept="image/jpg,image/jpeg,image/png" class="custom-file-input" id="imagem">
                                    <label class="custom-file-label" for="anuncio-imagem">Selecionar arquivo</label>
                                    <div class="invalid-feedback">
                                        Selecione uma foto do ve�culo.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-8 col-xl-7">
                            <div class="form-group">
                                <label for="anuncio-descricao">Descri��o</label>
                                <textarea class="form-control" name="descricao" id="descricao" placeholder="Carro em �timas condi��es..."></textarea>
                                <div class="invalid-feedback">
                                    Informe a descri��o do an�ncio.
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="index" class="btn">Cancelar</a>
                    <button type="submit" class="btn btn-primary">Anunciar</button>

                </form>

            </div>
        </main>

        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts-default.js"></script>
    </body>

</html>
