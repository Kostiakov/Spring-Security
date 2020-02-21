<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
	<title>Welcome to luv2code</title>
</head>
<body>
<h2>luv2code home page - yohooo</h2>
<hr>
<p>
Welcome to luv2code!
</p>
User: <security:authentication property="principal.username"/>
<br>
Role: <security:authentication property="principal.authorities"/>
<br>
<security:authorize access="hasRole('MANAGER')">
<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
</security:authorize>
<br>
<security:authorize access="hasRole('ADMIN')">
<a href="${pageContext.request.contextPath}/systems">Admins meeting</a>
</security:authorize>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout"/>
</form:form>
</body>
</html>