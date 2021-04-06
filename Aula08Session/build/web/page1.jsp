<%-- 
    Document   : index
    Created on : 4 de abr. de 2021, 15:36:33
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Identificação</title>
    </head>
    <body>
        <header>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </header>
        
        <main>
            <h1>Identificação Aluno</h1>

            <% if(session.getAttribute("session.username") == null) { %>
                <%@include file="WEB-INF/jspf/menu.jspf" %>
                <div style='color:red'>Você não tem permissão para acessar esta página</div><br>
            <% } else { %>
                <%@include file="WEB-INF/jspf/menu.jspf" %>
                <p><b>Nome:</b> Adriano Kenji  <b>RA:</b> 1290481922029</p>
            <% } %>
        </main>
        
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf" %> 
        </footer>
    </body>
</html>
