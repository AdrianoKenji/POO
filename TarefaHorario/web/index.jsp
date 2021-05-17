<%-- 
    Document   : index
    Created on : 17 de mai. de 2021, 00:32:55
    Author     : adria
--%>
<%@page import="java.util.Calendar"%>
<%@page import="horarios.Horario"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa Horário</title>
    </head>
    <body>
        <h1>Implementando a classe 'Horário'</h1>        
        <% 
            Horario horarioIntervalo = new Horario(16,50,00);
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            Date data = Calendar.getInstance().getTime();    
            String horarioAtual = sdf.format(data);
        %>      
        <h2>Horário Atual</h2>
        <h3><%= horarioAtual %></h3>
        <h2>Horário do Intervalo</h2>
        <h3><%= horarioIntervalo.getHorario() %></h3>
        <hr>
        <p><b>Nome:</b> Adriano Kenji Koyama Augusto</p>
        <p><b>RA:</b> 1290481922029</p>
    </body>
</html>
