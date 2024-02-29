<%-- 
    Document   : verZodiaco
    Created on : 15 feb 2024, 10:26:57
    Author     : Rodri
--%>

<%@ page import="paquete.JspCalendar" %>
<%@ page import="java.util.Calendar" %>

<%
    
    String nombre = request.getParameter("nombre");  // aqui cogemos los datos
    String apellido = request.getParameter("apellido");
    String fechaNacimientoStr = request.getParameter("fechaNacimiento");
    
    
    Calendar fechaNacimiento = Calendar.getInstance();
    fechaNacimiento.setTime(new java.text.SimpleDateFormat("yyyy-MM-dd").parse(fechaNacimientoStr));
    
   
    JspCalendar jspCalendar = new JspCalendar();
    String signoHoroscopo = jspCalendar.getHoroscopeSign(fechaNacimiento.get(Calendar.MONTH) + 1, fechaNacimiento.get(Calendar.DAY_OF_MONTH)); // le paso el mes y el dia
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Zodiaco</title>
</head>
<body>
    <h1>Hola, <%= nombre %> <%= apellido %>!</h1>
    <p>Tu signo del horóscopo es: <%= signoHoroscopo %></p>
</body>
</html>
