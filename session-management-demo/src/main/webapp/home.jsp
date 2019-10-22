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
		if (session != null) {
			out.println("Session ID: " + session.getId() + "<br />");
			if (session.getAttribute("user") != null) {
				String userName = (String) session.getAttribute("user");
				out.println("Hello " + userName + "!");
				out.println("Welcome to your profile!");
			} else {
				response.sendRedirect("index.jsp");
			}
		}
	%>
	<form action="logout.do" method="post">
		<button class="btn">Logout</button>
	</form>
</body>
</html>