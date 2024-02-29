<%-- 
    Document   : verLista
    Created on : 15 feb 2024, 10:27:08
    Author     : Rodri
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="paquete.Pelicula"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ver Lista</title>
    <style>
        
        body{
            
            background-color: #0B8CBC
        }
        section {
            margin-bottom: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        img {
            max-width: 100px;
        }
    </style>
</head>
<body>
    <h1>Lista de Películas</h1>
    <%
        // Suponiendo que listaPelicula es una lista de objetos Pelicula
        List<Pelicula> listaPelicula = new ArrayList<>();

        // Agregar películas a la lista (este paso es importante, de lo contrario la lista estará vacía)
        listaPelicula.add(new Pelicula("Titanic", "James Cameron", "Drama", "1997", "https://pics.filmaffinity.com/titanic-321994924-mmed.jpg"));
        listaPelicula.add(new Pelicula("El Padrino", "Francis Ford Coppola", "Drama", "1972", "https://pics.filmaffinity.com/the_godfather-488102675-mmed.jpg"));
        listaPelicula.add(new Pelicula("La La Land", "Damien Chazelle", "Musical", "2016", "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg"));

        // Iterar sobre la lista de películas
        for (Pelicula pelicula : listaPelicula) {
    %>
            <section>
                <h2><%= pelicula.getNombre() %></h2>
                <table>
                    <tr>
                        <th>Portada</th>
                        <th>Director</th>
                        <th>Género</th>
                        <th>Fecha de estreno</th>
                    </tr>
                    <tr>
                        <td><img src="<%= pelicula.getImagenURL() %>" alt="<%= pelicula.getNombre() %>"></td>
                        <td><%= pelicula.getDirector() %></td>
                        <td><%= pelicula.getGenero() %></td>
                        <td><%= pelicula.getFecha() %></td>
                    </tr>
                </table>
            </section>
    <%
        }
    %>
</body>
</html>