<%@ page import="Parkhauspackege.Parkhaus" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Willkommen im Parkhaus!" %>
</h1>

<br/>
<%
    ServletContext context = config.getServletContext();
    if(context.getAttribute("parkhaus") == null){
        context.setAttribute("parkhaus", new Parkhaus());
    }
%>
<a href="parkhaus-servlet">Einfahren</a>
</body>
</html>