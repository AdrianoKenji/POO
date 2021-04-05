<%-- 
    Document   : index
    Created on : 4 de abr. de 2021, 14:53:59
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    if(request.getParameter("application") != null) {
        application.setAttribute("name", request.getParameter("name"));
        response.sendRedirect(request.getRequestURI());
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa Sessão Usuário</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Página Inicial</h2>
        <p>
            Página inicial do site de experimentação
        </p>
    </body>
</html>
