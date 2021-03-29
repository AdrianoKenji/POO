<%--
    Document   : index
    Created on : 22 de mar. de 2021, 16:37:07
    Author     : adria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String errorMessage = null;
    int vp = 0;
    double taxa = 0;
    double meses = 0;
    
    double elevado = 0;
    double auxiliar = 0;
    double pmt = 0;
    
    try {
        vp = Integer.parseInt(request.getParameter("vp"));
        taxa = Integer.parseInt(request.getParameter("taxa"));
        meses = Integer.parseInt(request.getParameter("meses"));
    } catch (Exception ex) {
        errorMessage = "Erro em validar os valores!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarafa Tabela Price</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>

        
        <h1>Tarefa Tabela-Price</h1>
        <p><b>Nome:</b> Adriano Kenji</p>
        <p><b>RA:</b> 1290481922029</p>
        
        <form>
            <label>Valor Presente:</label><br>
            <input type="number" name="vp">
            <br><br>
            <label>Taxa de Juros (%):</label><br>
            <input type="number" name="taxa">
            <br><br>
            <label>Número de Períodos (meses):</label><br>
            <input type="number" name="meses">
            <br><br>
            <input type="submit" value="Calcular">
            <br><br>
        </form>
        
        <% 
            // Primeira parte
            auxiliar = (1 + (taxa/100));
            elevado = (Math.pow(auxiliar, meses));
            
            // Segunda parte
            auxiliar = (elevado - 1) / (elevado * (taxa/100));
            
            // Terceira parte
            pmt = (vp / auxiliar);
        %>
        
        <table border="1">
            <tr><th>N</th><th>Prestação</th><th>Amortização</th><th>Juros</th><th>Saldo Devedor</th></tr>
            <tr><th>-</th><th>R$</th><th>R$</th><th>R$</th><th>R$</th></tr>
            <tr><th>0</th><th>-</th><th>-</th><th>-</th><th> <%= vp %> </th></tr>
            <%                 
                double juros = 0;
                double amort = 0;
                double saldo = vp;
                
                for (int i = 1; i <= meses; i++) {
                    juros = saldo * (taxa/100);
                    amort = pmt - juros;
                    saldo = saldo - amort;
                    
                    String jurosF = String.format("%.2f", juros);
                    String pmtF = String.format("%.2f", pmt);
                    String amortF = String.format("%.2f", amort);
                    String saldoF = String.format("%.2f", saldo);
                    
                    if (i == meses) {
                        out.println("<tr><th>"+ i + "</th><th>" + pmtF + "</th><th>" + amortF + "</th><th>" + jurosF + "</th><th> 0.01 </th><tr>");
                        break;
                    }
                    out.println("<tr><th>" + i + "</th><th>" + pmtF + "</th><th>" + amortF + "</th><th>" + jurosF + "</th><th>" + saldoF + "</th><tr>");
                }
                
                    
            %>
        </table>
        
        <br>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
