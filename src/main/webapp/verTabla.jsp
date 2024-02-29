<%@ page import="java.util.ArrayList" %>
<%@ page import="paquete.Pais" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <%-- esta libreria sirve para mostrar los datos en tabla --%>

<!DOCTYPE html>
<style>
    body {

        background-image: url("https://wallpapercave.com/wp/wp6859051.jpg");
        background-repeat: no-repeat;

    }

    h1{

        color:white;
    }

    th {
        color: white; /* Cambiar el color del texto a rojo */
    }

    td{

        color:white;
    }

</style>


</head>
<body>
    <h1>TABLA DE PAISES</h1>

    <%-- Crear una nueva lista de pa�ses --%>
    <% ArrayList<Pais> listaPaises = new ArrayList<Pais>(); %>

    <%-- Agregar pa�ses a la lista --%>
    <% listaPaises.add(new Pais("Alemania", "Berl�n", 83000000));
        listaPaises.add(new Pais("Reino Unido", "Londres", 66000000));
        listaPaises.add(new Pais("Jap�n", "Tokio", 126500000));
        listaPaises.add(new Pais("Canad�", "Ottawa", 37590000));
        listaPaises.add(new Pais("Australia", "Canberra", 25600000));
        listaPaises.add(new Pais("India", "Nueva Delhi", 1380000000));
        listaPaises.add(new Pais("Brasil", "Brasilia", 210000000));
        listaPaises.add(new Pais("M�xico", "Ciudad de M�xico", 126200000));
        listaPaises.add(new Pais("Argentina", "Buenos Aires", 44940000));
    %>

    <%-- Colocar la lista en el �mbito de la solicitud (request) --%>
    <% request.setAttribute("ListaPais", listaPaises);%>

    <table border="1">
        <thead>
            <tr>
                <th>Pais</th>
                <th>Capital</th>
                <th>Poblaci�n</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pais" items="${requestScope.ListaPais}">
                <tr>
                    <td><c:out value="${pais.nombre}" /></td>
                    <td><c:out value="${pais.capital}" /></td>
                    <td><c:out value="${pais.poblacion}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>