<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isErrorPage="true"%>
<html>
<body>
   <font color="red"> Error: <%= exception.getMessage()%></font><br>
   <br>
   <a href="index.jsp">На домашнюю страницу<p></a>
</body>
</html>