<%@ page import="java.util.*, com.airline.models.*"%>
<!DOCTYPE html>
<%-- <%@ include file="calendar.jsp" %> Calendar is Here --%>
<html>
<head>

<style>
body {
	font-family: arial, sans-serif;
	font-size: 14px;
}
</style>
<title>Flights List</title>
<link rel="stylesheet" type="text/css"	href="resources/css/jpaStyles.css" />
</head>

<body>
	<h1 style="text-decoration: underline;">AirlineWebApp Main View</h1>

<table width="100%">
		<tr>
			<th>Flight and Airplane</th>
			<th>Pilot</th>
			<th>Passenger</th>
			</tr>
			
			<tr>
			<td>
			<form action="AddFlight" method="POST">
					From: <select id="from_destination" name="from_destination">
						<option value="San_Francisco">San Francisco</option>
						<option value="Los_Angeles">LA</option>
						<option value="New_York">NYC</option>
						<option value="London">London</option>
						<option value="Paris">Paris</option>
						<option value="Amsterdam">Amsterdam</option>
						<option value="Rome">Rome</option>
					</select> 
					<br> 
					To: <select id="to_destination" name="to_destination">
						<option value="San_Francisco">San Francisco</option>
						<option value="Los_Angeles">LA</option>
						<option value="New_York">NYC</option>
						<option value="London">London</option>
						<option value="Paris">Paris</option>
						<option value="Amsterdam">Amsterdam</option>
						<option value="Rome">Rome</option>
					</select>

					<h4>Time of Flight</h4>
					Year: <select name="year">
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
					</select> <br> 
					Month: <select name="month">
						<option value="0">January</option>
						<option value="1">February</option>
						<option value="2">March</option>
						<option value="3">April</option>
						<option value="4">May</option>
						<option value="5">June</option>
						<option value="6">July</option>
						<option value="7">Augest</option>
						<option value="8">Semptember</option>
						<option value="9">October</option>
						<option value="10">November</option>
						<option value="11">December</option>
					</select> <br> 
					Day of month: <input name="day" type="text">
					<br> Hour of Day: <input name="hour"
						type="text">0 - 23 
						<br>
						Minute: <input
						name="minute" type="text"> 
						<br> 
					Price: <input name="price" type="text"> 
					<br>

					Airplane
					<input name="airplane_make" type="text"> <br> 
					Model
					<input name="airplane_model" type="text"> <br> 
					Number of seats
					<input name="airplane_seating" type="text"> 
					<br><hr> 
					<button type="submit">Add flight and airplane</button>
				</form>
			
			</td>
			<td>
			
				<form action="CreatePilotToFlight" method="POST">
					First name: <br> <input name="first_name" type="text">
					<br> Last name: <br> <input name="last_name" type="text">
					<br> License: <br> <input name="license" type="text">
					<br> Pilot Rank: <br> <select id="pilot_rank"
						name="pilot_rank">
						<option value="Captain">Captain</option>
						<option value="First_Officer">First Officer</option>
						<option value="Junior_Officer">Junior Officer</option>
					</select> <br> Flight ID: <br> <input name="fid" type="text">
					<hr>
					<button type="submit">Add pilot to the flight</button>
				</form>
			</td>
			<td>
						<form action="AddPassenger" method="POST">
					First name: <br> <input name="first_name" type="text">
					<br> Last name: <br> <input name="last_name" type="text">
					<br> Date of Birth: <br> <input name="dob" type="text">
					<br> Gender: <br> <select name="gender">
						<option value="Male">Man</option>
						<option value="Female">Woman</option>
					</select> <br>
					<hr>
					<button type="submit">Add Passenger</button>
				</form>
			</td>
			</tr>
			

</table>
				
	

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
	
		
		<h2>Add flight to passenger <span style="font-family: serif; font-size: 16px">(give another	ticket)</span></h2>
		<form action="AddFlightTicketToPassenger" method="POST">
		
			Add ticket for a flight with the ID: <input name="fid" type="text">
			to a passenger with the ID: <input name="pid" type="text"> <br>
			<hr>
			<span style="font-weight: bold;">In real world terms - add the
				flight ticket to the passenger's collection of flight tickets)</span>
			<hr>
			<button type="submit">Add Flight ticket to Passenger's
				collection</button>
			<hr>
		</form>

</body>
</html>