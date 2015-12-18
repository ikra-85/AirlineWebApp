<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>Connect Flights and Passengers</title>
</head>
<body>

<table>
		<tr style="background-color: Silver; "><td>
	<h2>Add Passenger to Flight</h2>
		<form action="AddPassengerToFlight" method="POST">
		<table>
		<tr><td>Passenger ID</td>		<td><input name="pid" type="text"></td> 		</tr>
		<tr><td>Flight ID</td>	<td><input name="fid" type="text"></td>	</tr>
		</table>
		<br>
			<button type="submit">Add Passenger to Flight</button>
			<br>
			<hr>
		</form>
		</td>
		<td></td>  <td>
		
		<h2>Add flight to passenger <span style="font-family: serif; font-size: 16px">(give another	ticket)</span></h2>
		<form action="AddFlightTicketToPassenger" method="POST">
		<table>
		<tr><td>Flight ID:</td><td> <input name="fid" type="text"></td></tr>
		<tr><td>Passenger  ID: </td><td><input name="pid" type="text"> </td></tr>
			</table>
			<br>
			<button type="submit">Add Flight ticket to Passenger's	collection</button>
			<hr>
		</form>
		
		</td></tr>
		</table>
		

<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>