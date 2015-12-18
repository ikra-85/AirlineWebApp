<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>Add Passenger</title>
</head>
<body>
	<h1>Delete by ID</h1>
	<form action="deeletebyid" method="post">
		<table>
			<tr>
				<td>Flight:</td>
				<td><input type="text" name="fid"></td>
			</tr>
			<tr>
				<td>Pilot license:</td>
				<td><input type="text" name="license"></td>
			</tr>
			<tr>
				<td>Passenger:</td>
				<td><input type="text" name="pid"></td>
			</tr>
			<tr>
				<td>Airplane(by Registration number):</td>
				<td><input type="text" name="plane_number"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Detele"></td>
			</tr>
		</table>
	</form>
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>