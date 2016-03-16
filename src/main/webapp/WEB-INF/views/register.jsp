<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>
    .error {
        color: #ff0000;
    }
</style>
</head>
<body>
	<h2>Registration Form</h2>

	<form:form method="POST" modelAttribute="book" action="store">		
		<table>
			<tr>
				<td><label for="name">Name: </label></td>
				<td><form:input path="name" id="name" /></td>				
			</tr>

			<tr>
				<td><label for="writer">Writer: </label></td>
				<td><form:input path="writer" id="writer" /></td>				
			</tr>

			<tr>
				<td><label for="quantity">Quantity: </label></td>
				<td><form:input path="quantity" id="quantity" /></td>				
			</tr>

			<tr>
				<td><label for="isbn">ISBN: </label></td>
				<td><form:input path="isbn" id="isbn" /></td>				
			</tr>

			<tr>
				<td colspan="2">
				<input type="submit" value="Register" />
				<%-- 	 <c:choose>				    
						<c:when test="${store}">
							<input type="submit" value="Update" />
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register" />
						</c:otherwise>
				    </c:choose> --%>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>