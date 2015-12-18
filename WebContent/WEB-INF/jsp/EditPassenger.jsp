<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
<html>
<head>
<title>Edit person</title>
</head>
<body>
	<h1>Edit Passenger</h1>
		<form action="EditPassenger" method="POST">
	<input type="hidden" name="id" value="${person.id}">
	<table>
			<tr><td>First name:</td><td><input type="text" name="first_name" value="${person.first_name}"></td></tr>
			<tr><td>Last name:</td><td><input type="text" name="last_name" value="${person.last_name}"></td></tr>
			<tr><td>Street:</td><td><input type="text" name="street" value="${address.street}"></td></tr>
			<tr><td>City:</td><td><input type="text" name="city" value="${address.city}"></td></tr>
			<tr><td>State:</td><td><input type="text" name="state" value="${address.state}"></td></tr>
			<tr><td>ZIP:</td><td><input type="text" name="zip" value="${address.zip}"></td></tr>
			<tr><td>Gender:</td><td><select name="gender">
									<option value="Male">Man</option>
									<option value="Female">Woman</option>
									</select></td></tr>
			<tr><td>Date of Birth:</td><td><input name="dob" type="text"></td></tr>
			<tr><td></td><td><button type="submit">Edit Passenger</button></td></tr>
	</table>

	<input type="submit" value="edit">
	</form>
	<form action="person" method="post">
	<input type="hidden" name="delete">
	<input type="hidden" name="id" value="${person.id}">
	<input type="submit" value="delete">
	</form>
	
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>