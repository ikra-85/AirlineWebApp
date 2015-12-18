<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>Add Pilot to Flight</title>
</head>
<body>
	<h1>Add Pilot to Flight</h1>
<form action="CreatePilotToFlight.do" method="POST">
		<table>
			<tr><td>First name:</td><td><input name="first_name" type="text"></td></tr>
			<tr><td>Last name:</td><td><input name="last_name" type="text"></td></tr>
			<tr><td>License #:</td><td><input name="license" type="text"></td></tr>
			<tr><td>Pilot Rank:</td><td><select id="pilot_rank"	name="pilot_rank">
										<option value="Captain">Captain</option>
										<option value="First_Officer">First Officer</option>
										<option value="Junior_Officer">Junior Officer</option>
													</select></td></tr>
			<tr><td>Flight ID:</td><td><input name="fid" type="text"></td></tr>
			<tr><td></td><td><button type="submit">Add pilot to the flight</button></td></tr>
	</table>
</form>
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>