<%-- 
    Document   : logout
    Created on : 8/05/2018, 04:09:46 PM
    Author     : Andres
--%>

<%@ page import ="java.sql.*" %>
<%
    session.invalidate();
    response.sendRedirect("index.html");
%>