<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>

<html>
<head>
<style>
body {	font-family: arial, sans-serif; 	font-size: 14px; }
</style>
<title>Add Flight</title>
</head>
<body>
	<h1>Add Flight</h1>
	<table bgcolor="silver">
			<tr><td>
<form action="AddFlight.do" method="POST">
		<table bgcolor="silver">
			<tr><td>From:</td><td><select id="from_destination"	name="from_destination">
								<option value="San_Francisco">San Francisco</option>
								<option value="Los_Angeles">LA</option>
								<option value="New_York">NYC</option>
								<option value="London">London</option>
								<option value="Paris">Paris</option>
								<option value="Amsterdam">Amsterdam</option>
								<option value="Rome">Rome</option>
						</select></td></tr>
			<tr><td>To:</td><td><select id="to_destination" name="to_destination">
								<option value="London">London</option>
								<option value="San_Francisco">San Francisco</option>
								<option value="Los_Angeles">LA</option>
								<option value="New_York">NYC</option>
								<option value="Paris">Paris</option>
								<option value="Amsterdam">Amsterdam</option>
								<option value="Rome">Rome</option>
						</select></td></tr>
						<tr></tr>
			<tr><td><h4>Time of Flight</h4></td><td></td></tr>
			<tr><td>Year:</td><td><select name="year">
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
					</select></td></tr>
			<tr><td>Month:</td><td><select name="month">
							<option value="0">January</option>
							<option value="1">February</option>
							<option value="2">March</option>
							<option value="3">April</option>
							<option value="4">May</option>
							<option value="5">June</option>
							<option value="6">July</option>
							<option value="7">August</option>
							<option value="8">Semptember</option>
							<option value="9">October</option>
							<option value="10">November</option>
							<option value="11">December</option>
					</select></td></tr>
			<tr><td>Day of month:</td><td><input name="day" type="text"></td></tr>
			<tr><td>Hour of Day: 0 - 23</td><td><input name="hour" type="text"></td></tr>
			<tr><td>Minute:</td><td><input name="minute" type="text"></td></tr>
			<tr><td>Price:</td><td><input name="price" type="text"></td></tr>
			<tr></tr>
			<tr><td><h4>Airplane Information</h4></td><td></td></tr>
			<tr><td>Airplane model:</td><td><input name="airplane_make" type="text"></td></tr>
			<tr><td>Registration number:</td><td> <input name="airplane_model" type="text"></td></tr>
			<tr><td>Number of seats :</td><td><input name="airplane_seating" type="text"></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td><button type="submit">Add flight and airplane</button></td></tr>
	<p align="center">	</p>
		</table>
	</form>
</td><td>
<%@ include file="/WEB-INF/views/calendar.jsp"%>
</td>
</tr>
</table>
	
	<%@ include file="/WEB-INF/jsp/control.jsp"%>
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>