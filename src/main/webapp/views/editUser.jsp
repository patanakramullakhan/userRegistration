<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>


<body>
	<h1>edit user details</h1>

	<form:form method="GET" action="/editandsave">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id"/></td>
		</tr>
	
		<tr>
			<td>NAME</td>
			<td><form:input path="name"/></td>
		</tr>
	
		<tr>
			<td>PASSWORD</td>
			<td><form:input path="password"/></td>
		</tr>
		
		<tr>
			<td>EMAIL</td>
			<td><form:input path="email"/></td>
		</tr>
		
		<tr>
			<td>GENDER</td>
			<td><form:radiobutton path="gender" value="male"/>MALE</td>
			<td><form:radiobutton path="gender" value="female"/>FEMALE</td>
			<td><form:radiobutton path="gender" value="others"/>OTHERS</td>
		</tr>
		
		<tr>
			<td>ADDRESS</td>
			<td><form:input path="country"/></td>
		</tr>
		
		
		<tr>
			<td></td>
			<td><input type="submit" value="EDIT"></td>
		</tr>
		
	
	
	
	
	</table>
	
	
	</form:form>


</body>








</body>