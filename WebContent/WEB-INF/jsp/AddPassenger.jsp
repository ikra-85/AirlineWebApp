<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>Add Passenger</title>
</head>
<body>
	<h1>Add Passenger</h1>
	<form action="AddPassenger.do" method="POST">
	<table>
			<tr><td>First name:</td><td><input name="first_name" type="text"></td></tr>
			<tr><td>Last name:</td><td><input name="last_name" type="text"></td></tr>
			<tr><td>Street:</td><td><input name="street" type="text"></td></tr>
			<tr><td>City:</td><td><input name="city" type="text"></td></tr>
			<tr><td>State:</td><td><input name="state" type="text"></td></tr>
			<tr><td>ZIP:</td><td><input name="zip" type="text"></td></tr>
			<tr><td>Gender:</td><td><select name="gender">
									<option value="Male">Man</option>
									<option value="Female">Woman</option>
									</select></td></tr>
			<tr><td>Date of Birth:</td><td><input name="dob" type="text"></td></tr>
			<tr><td>Flight class:</td><td><select name="gender">
									<option value="First">First</option>
									<option value="Business">Bisiness</option>
									<option value="Coach">Coach</option>
									</select></td></tr>
			<tr><td></td><td><button type="submit">Add Passenger</button></td></tr>
	</table>
</form>
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>