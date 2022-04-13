<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display single book</title>
</head>
<body>
	<div>
		<h1><c:out value="${book.title }"/></h1>
		<h2><c:out value="${book.description }"/></h2>
		<h2><c:out value="${book.language }"/></h2>
		<h2><c:out value="${book.numberOfPages }"/></h2>
	</div>
</body>
</html>