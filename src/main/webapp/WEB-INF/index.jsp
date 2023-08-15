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
<h1>Burger Tracker</h1>
<table>
    <thead>
        <tr>
            <th>Burger Name</th>
            <th>Restaurant Name</th>
            <th>Rating (out of 5)</th>
        </tr>
    </thead>
    <tbody>
        <!-- loop over all the books to show the details as in the wireframe! -->
        <c:forEach var="burger" items="${burgers}">
        	<tr>
         	<td><c:out value="${burger.burgerName}" /></td>
         	<td><c:out value="${burger.restaurantName}" /></td>
         	<td><c:out value="${burger.rating}" /></td>
        	</tr>
        </c:forEach>
    </tbody>
</table>
<div>
	<h2>Add a Burger:</h2>
	<form:form action="/burgers" method="post" modelAttribute="burger">
		<p>
			<form:errors path="burgerName"/>
			<form:errors path="restaurantName"/>
			<form:errors path="rating"/>
			<form:errors path="notes"/>
		</p>
		<p>
			<form:label path="burgerName">Burger Name</form:label>
	        
	        <form:input path="burgerName"/>
		</p>
		<p>
			<form:label path="restaurantName">Restaurant Name</form:label>
	        
	        <form:input path="restaurantName"/>
		</p>
		<p>
			<form:label path="rating">Rating</form:label>
	        
	        <form:input path="rating"/>
		</p>
		<p>
			<form:label path="notes">Notes</form:label>
	        
	        <form:input path="notes"/>
		</p>
		<input type="submit" value="Submit" />
	</form:form>
</div>
	
</body>
</html>