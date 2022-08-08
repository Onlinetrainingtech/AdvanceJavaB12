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
  
   String u1=request.getParameter("uname");

   if(u1.equals("admin"))
   {
	   //out.println("LoginSuces!!!");
	   HttpSession sess=request.getSession();
	   sess.setAttribute("k1",u1);
	   RequestDispatcher rd=request.getRequestDispatcher("sucess.jsp");
	   rd.forward(request, response);
	   
   }
   else
   {
	   //out.println("LoginFail!!!");
	   Cookie ck=new Cookie("k2",u1);
	   response.addCookie(ck);
	   RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
	   rd.include(request, response);
   }

%>
</body>
</html>