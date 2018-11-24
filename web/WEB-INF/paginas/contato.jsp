<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contato</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="CSS/fontawesome.all.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/style-default.css">
    <link rel="stylesheet" type="text/css" href="CSS/style-contato.css">

    <script>
        function validarFormulario() {
            var inputNome = document['form-contato']['contato-nome'];
            var inputEmail = document['form-contato']['contato-email'];
            var inputMensagem = document['form-contato']['contato-mensagem'];

            inputNome.classList.add('is-invalid');
            inputEmail.classList.add('is-invalid');
            inputMensagem.classList.add('is-invalid');

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
                    <li class="nav-item">
                        <a class="nav-link" href="anunciar">Anunciar</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="contato">Contato</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main class="container-fluid">
        <div class="conteudo col-sm-12 col-md-11 col-lg-10">
            <h3>Preencha o formul�rio para entrar em contato com o maior site de an�ncios do Brasil</h3>
            <div class="dropdown-divider"></div>

            <form name="form-contato" onsubmit="return validarFormulario()">

                <div class="form-row">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <div class="form-group">
                            <label for="contato-nome">Nome completo</label>
                            <input type="text" class="form-control" id="contato-nome" placeholder="Seu nome">
                            <div class="invalid-feedback">
                                Informe seu nome completo.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <div class="form-group">
                            <label for="contato-email">E-mail</label>
                            <input type="email" class="form-control" id="contato-email" placeholder="Seu e-mail">
                            <div class="invalid-feedback">
                                Informe seu e-mail de contato.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-lg-8 col-xl-7">
                        <div class="form-group">
                            <label for="contato-mensagem">Mensagem</label>
                            <textarea class="form-control" id="contato-mensagem" placeholder="Escreva sua mensagem aqui..."></textarea>
                            <div class="invalid-feedback">
                                Informe sua mensagem.
                            </div>
                        </div>
                    </div>
                </div>

                <a href="index" class="btn">Cancelar</a>
                <button type="submit" class="btn btn-primary">Enviar</button>

            </form>

        </div>
    </main>

    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts-default.js"></script>
</body>

</html>