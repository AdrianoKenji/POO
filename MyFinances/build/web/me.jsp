<%-- 
    Document   : users.jsp
    Created on : 5 de jun. de 2021, 00:05:50
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String requestError = null;
    if(request.getParameter("changePassword") != null) {
        String login = (String) session.getAttribute("user.login");
        String passwordAtual = request.getParameter("passwordAtual");
        String passwordNovo = request.getParameter("passwordNovo");
        String passwordConfirma = request.getParameter("passwordConfirma");
        try{
            if(User.getUser(login, passwordAtual) == null) {
                requestError = "Senha inválida";
            } else if(!passwordNovo.equals(passwordConfirma)) {
                requestError = "Confirmação dos campos password está inválida";
            } else {                
                User.changePassword(login, passwordNovo);
                response.sendRedirect(request.getRequestURI());
            }            
        } catch(Exception ex) {
            requestError = "Falha na criação do usuário [" + ex.getMessage() + "]";
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile - My Finane$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <% if(requestError != null) { %> 
            <div style="color: red">
                Erro ao manipular perfil : <%= requestError %>
            </div>
        <% } %> 
        <h2>My Profile</h2>
        <% String name = (String) session.getAttribute("user.name"); %>
        <% String login = (String) session.getAttribute("user.login"); %>
        <% String role = (String) session.getAttribute("user.role"); %>
        <% if(login == null) { %>
            <div>Esta página é restrita a usuários logados</div>   
        <% } else { %>   
        <h3>Nome</h3>
        <div><%= name %></div>
        <h3>Login</h3>
        <div><%= login %></div>
        <h3>Papel</h3>
        <div><%= role %></div>
        <h3>Alterar senha</h3>
        <fieldset>
            <legend>Alterar password</legend>
            <form method="post">           
                Password atual: 
                <br><input type="password" name="passwordAtual"/>
                <br>Nova Password: 
                <br><input type="password" name="passwordNovo"/>           
                <br>Confirmação da nova Password: 
                <br><input type="password" name="passwordConfirma"/> 
                <br><br><input type="submit" name="changePassword" value="Alterar password">
            </form>
        </fieldset>        
       <% } %>                        
    </body>
</html>
