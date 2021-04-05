<%-- 
    Document   : index
    Created on : 4 de abr. de 2021, 14:53:59
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    if(request.getParameter("application") != null) {
        application.setAttribute("application.name", request.getParameter("name"));
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
        <h2>Atributo de Aplicação</h2>
        <% if(application.getAttribute("application.name") != null) { %>
            <div>Nome: <%= application.getAttribute("application.name") %> </div>
        <% } %> 
        
        <form>
            <input type="text" name="name"/>
            <input type="submit" name="application" value="Set"/>
        </form>
        
    </body>
</html>
