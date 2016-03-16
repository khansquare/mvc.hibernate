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

	<form:form method="POST" modelAttribute="book" commandName="book" action="store">
		<%-- <form:input type="hidden" id="id" path="id"/>	 --%>	
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
				</td>
			</tr>
		</table>
	</form:form>
	 ${success}
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
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
	<div class="row">
		<form:form method="POST" modelAttribute="book" commandName="book"
			action="store" class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<input id="name" type="text" class="validate"> <label
						for="name" class="active">Book Name</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<input id="writer" type="text" class="validate"> <label
						for="writer" class="active">Writer</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="quantity" class="validate"> <label
						for="quantity" class="active">Quantity</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="isbn" class="validate"> <label for="isbn" class="active">ISBN</label>
				</div>
			</div>
			<div class="row">
			<button class="btn waves-effect waves-light" type="submit" name="action">Submit
    			<i class="material-icons right">send</i>
  			</button>			
			</div>
			
		</form:form>
	</div>
	${success}
</body>
</html> --%>