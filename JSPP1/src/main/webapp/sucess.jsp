<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

HttpSession sess=request.getSession(true);

String info=(String)sess.getAttribute("k1");

%>
<h3>LoginSucess!!!</h3>
<h2>Welcome to Session Concepts<%=info%></h2>
</body>
</html>