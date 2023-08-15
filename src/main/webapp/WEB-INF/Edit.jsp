<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
	<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Burger</h1>
	<form:form action="/burgers/${burger.id}" method="post" modelAttribute="burger">
    <input type="hidden" name="_method" value="patch">
    <div>
        <form:label path="burgerName">Burger Name</form:label>
        <form:errors path="burgerName"/>
        <form:input path="burgerName"/>
    </div>
    <div>
        <form:label path="restaurantName">Restaurant Name</form:label>
        <form:errors path="restaurantName"/>
        <form:input path="restaurantName"/>
    </div>
    <div>
        <form:label path="rating">Rating</form:label>
        <form:errors path="rating"/>
        <form:input path="rating"/>
    </div>
    <div>
        <form:label path="notes">Pages</form:label>
        <form:errors path="notes"/>     
        <form:input path="notes" />
    </div>    
    <input type="submit" value="Submit"/>
	</form:form>
</body>
</html>