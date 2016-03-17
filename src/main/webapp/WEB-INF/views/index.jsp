<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Book Registration</title>
</head>
<body>
	<table>
        <tr>
            <td>NAME</td><td>WRITER</td><td>QUANTITY</td><td>ISBN</td><td></td>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
            <td>${book.name}</td>
            <td>${book.writer}</td>
            <td>${book.quantity}</td>
            <td>${book.isbn}</td>           
            </tr>
        </c:forEach>
    </table>
    <br/>
	<a href="<c:url value='/register' />">Register</a>
</body>
</html>