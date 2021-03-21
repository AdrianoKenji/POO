<%-- 
    Document   : calendario
    Created on : 18 de mar. de 2021, 13:05:42
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    String mes = null;
    int ano = 0;
    try {
        mes = request.getParameter("mes");
        ano = Integer.parseInt(request.getParameter("ano"));
    } catch (Exception ex) {
        errorMessage = "Erro em validar os valores!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendário</title>
    </head>
    <body>
        <h1>Tarefa Calendário</h1>
        <p><b>Nome:</b> Adriano Kenji Koyama Augusto</p>
        <p><b>RA:</b>1290481922029</p>
        <hr>
        
        <h2>Calendário</h2>
        <% if (errorMessage != null) { %>
            <div style="color:red;"> <%= errorMessage %> </div> 
            <% } else { %>
            <table border="1">
                <!-- Começa o Calendário -->
                <% if(mes.equals("Fevereiro")) { %>
                <p><b><%= mes + " " +ano %></b></p>
                    <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sábado</th></tr>
                    <tr> 
                            <% if (ano % 4 == 0 && ano % 100 != 0) {
                                for(int i = 1; i<= 29; i++) {
                                    out.println("<td> "+i+"</td>");
                                    if (i % 7 == 0) {
                                    out.println("<tr></tr>");
                                    }
                                }   
                            } else {
                                for(int i = 1; i<= 28; i++) {
                                    out.println("<td> "+i+"</td>");
                                    if (i % 7 == 0) {
                                    out.println("<tr></tr>");
                                    }   
                                }
                            } %>
                     </tr> 
                <!-- Termina o Calendário -->          
                <!-- Começa o Calendário -->
                <% } else if(mes.equals("Abril") || mes.equals("Junho") || mes.equals("Setembro") || mes.equals("Novembro")) { %>
                    <p><b><%= mes + " " +ano %></b></p>
                    <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sábado</th></tr>
                    <tr>
                    <% for(int i = 1; i<= 30; i++) {
                                out.println("<td> "+i+"</td>");
                                if (i % 7 == 0) {
                                out.println("<tr></tr>");
                                }   
                            } %>    
                    </tr>  
                <!-- Termina o Calendário -->
                <!-- Começa o Calendário -->
                <% } else { %>
                    <p><b><%= mes + " " +ano %></b></p>
                    <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sábado</th></tr>
                    <tr>
                        <% for(int i = 1; i<= 31; i++) {
                                out.println("<td> "+i+"</td>");
                                if (i % 7 == 0) {
                                out.println("<tr></tr>");
                                }   
                            } %>    
                    </tr>
                <% } %>
                <!-- Termina o Calendário -->
            </table>
        <% } %>
        <hr>
        <form>
            <label>Mês:</label><br>
            <select name="mes">
                <option value="Janeiro" selected>Janeiro</option>
                <option value="Fevereiro">Fevereiro</option>
                <option value="Março">Março</option>
                <option value="Abril">Abril</option>
                <option value="Maio">Maio</option>
                <option value="Junho">Junho</option>
                <option value="Julho">Julho</option>
                <option value="Agosto">Agosto</option>
                <option value="Setembro">Setembro</option>
                <option value="Outubro">Outubro</option>
                <option value="Novembro">Novembro</option>
                <option value="Dezembro">Dezembro</option>
            </select>
            <br><label>Ano:</label><br>
            <input type="number" name="ano" placeholder="Digite um Ano"><br>
            <br><input type="submit" name="enviar" value="Enviar">
        </form>
    </body>
</html>
