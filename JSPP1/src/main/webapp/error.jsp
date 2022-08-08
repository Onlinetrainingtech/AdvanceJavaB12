<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>LoginFail!!!</h3>
<%


Cookie ck[]=request.getCookies();

out.println(""+ck[0].getValue());

out.println(""+ck[0].getVersion());

%>
</body>
</html>