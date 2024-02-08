<%@ page contentType="text/html; charset=ISO-8859-1" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table border="1">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>PASSWORD</th>
		<th>EMAIL</th>
		<th>GENDER</th>
		<th>COUNTRY</th>
		<th>DELETE</th>
		<th>EDIT</th>
		
	</tr>
	
	<c:forEach items="${users}" var="user">
	
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.password}</td>
			<td>${user.email}</td>
			<td>${user.gender}</td>
			<td>${user.country}</td>
			<td>
				<a href="/delete/${user.id}">DELETE</a>
			</td>
			
			<td>
				<a href="/edit/${user.id}">EDIT</a>
			</td>
		
		
		
		
		</tr>
	
	
	</c:forEach>



</table>