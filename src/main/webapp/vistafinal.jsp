<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <header>
          <h1 class="titulo">Listado de paises</h1>
        </header>
        <h2 class="nombre">Patricia Blasco 2ºDAW &copy;</h2>
        <table class="table table-primary alineado">
            <thead class="table-dark">
              <tr>
                <th colspan="3">Paises que hablan el idioma seleccionado</th>
              </tr>
              <tr>
                <th class="col-4">Pais</th>
                <th class="col-4">Idioma Utilizado</th>
                <th class="col-2">Oficial</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${lenguaje}" var="idioma">
                  <tr>
                    <td>${idioma.name}</td>
                    <td>${idioma.language}</td>
                    <td>T</td>
                  </tr>
              </c:forEach>
            </tbody>
        </table>
        <style>
          .alineado {
            text-align: center;
          }
          header {
            height: 4rem;
            margin-bottom: 2rem;
            background-color: lightblue;
          }
          .titulo {
            text-align: center;
          }
          .nombre {
            background-color: lightblue;
            width: 30rem;
            height: 3rem;
          }
        </style>
    </body>
</html>
