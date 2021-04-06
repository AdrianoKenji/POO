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
        <title>Pagina Inicial</title>
    </head>
    <body>
        <header>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </header>
        
        <main>
            <h1>Bem-vindo à página inicial :)</h1><br>

            <%@include file="WEB-INF/jspf/menu.jspf" %>   

        </main>    
            
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf" %> 
        </footer>
    </body>
</html>
