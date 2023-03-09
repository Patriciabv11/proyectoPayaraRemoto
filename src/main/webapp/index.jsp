<%-- 
    Document   : index
    Created on : 09-mar-2023, 12:23:06
    Author     : Patricia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="card">
            <div class="card-header">
                <h1 align="center">Selecciona un idioma</h1>
                <h4 align="center">Puedes seleccionar un idioma para ver los paises dónde se habla ese idioma</h4>
            </div>
            <div class="card-body">
                <form method="get" action="ServletController">
                  <div class="row items">
                    <div class="col-3">
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio1" name="optradio" value="Spanish" checked>Español
                        <label class="form-check-label" for="radio1"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="English">Inglés
                        <label class="form-check-label" for="radio2"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio3" name="optradio" value="German">Aleman
                        <label class="form-check-label"></label>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio4" name="optradio" value="Arabic">Árabe
                        <label class="form-check-label"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio5" name="optradio" value="French">Francés
                        <label class="form-check-label"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio6" name="optradio" value="Dutch">Holandés
                        <label class="form-check-label"></label>
                      </div>
                    </div>
                    <div class="col-3">
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio7" name="optradio" value="Portuguese">Portugués
                        <label class="form-check-label"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio8" name="optradio" value="Russian">Ruso
                        <label class="form-check-label"></label>
                      </div>
                      <div class="form-check">
                        <input type="radio" class="form-check-input" id="radio3" name="optradio" value="Korean">Coreano
                        <label class="form-check-label"></label>
                      </div>
                    </div>
                  </div>
                  <button type="submit" name="operacion" value="Buscar" class="btn btn-primary">Ver resultados</button>
                </form> 
            </div>
        </div>
    </body>
    <style>
        .items {
          display:flex;
          justify-content: center;
          margin-left: 7rem;
          margin-top: 2rem;
        }
        .btn {
          display: flex;
          margin-left: 45%;
          margin-top: 2rem;
        }
        .card {
          width: 60rem;
          margin-top: 7rem;
          margin-left: 6rem;
          border-width: 0.5rem;
          border-color: black; 
        }
        .card-header {
          background-color: lightblue;
        }
    </style>
</html>
