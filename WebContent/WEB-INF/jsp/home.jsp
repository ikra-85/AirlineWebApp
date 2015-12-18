<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
      
<f:view><%@include file="header.jsp"%><table>
			<h:column>
			<h3 style="text-decoration: inherit;">Add flight and airplane</h3>

	<form action="AddFlight" method="POST">

		From: <select id="from_destination" name="from_destination">
			<option value="San_Francisco">San Francisco</option>
			<option value="Los_Angeles">LA</option>
			<option value="New_York">NYC</option>
			<option value="London">London</option>
			<option value="Paris">Paris</option>
			<option value="Amsterdam">Amsterdam</option>
			<option value="Rome">Rome</option>
		</select> <br /> <br /> To: <select id="to_destination" name="to_destination">
			<option value="San_Francisco">San Francisco</option>
			<option value="Los_Angeles">LA</option>
			<option value="New_York">NYC</option>
			<option value="London">London</option>
			<option value="Paris">Paris</option>
			<option value="Amsterdam">Amsterdam</option>
			<option value="Rome">Rome</option>
		</select>

		<h4>Time of Flight</h4>
		<hr />
		Year: <select name="year">
			<option value="2015">2015</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
			<option value="2020">2020</option>
		</select> <br /> <br /> Month: <select name="month">
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
		</select> <br /> <br /> Day of month: <input name="day" type="text"></input>
		<br /> <br /> Hour of Day: 0-23 <input name="hour" type="text"></input>
		<br /> <br /> Minute: <input name="minute" type="text"></input> <br />
		<br /> Price: <input name="price" type="text"></input> <br />

		<h4>Airplane</h4>
		<input name="airplane_make" type="text"></input> <br />
		<h4>Model</h4>
		<input name="airplane_model" type="text"></input> <br />
		<hr />
		<h4>Number of seats</h4>
		<input name="airplane_seating" type="text"></input> <br />
		<hr />
		<button type="submit">Add flight and airplane</button>
		<hr />
		<br />
	</form>
			</h:column>
			<h:column><h1>Add pilot to the flight</h1>

	<form action="CreatePilotToFlight" method="POST">

		First name: <br /> <input name="first_name" type="text"></input> <br />

		Last name: <br /> <input name="last_name" type="text"></input> <br />

		License: <br /> <input name="license" type="text"></input> <br />

		Pilort Rank: <br /> <select id="pilot_rank" name="pilot_rank">
			<option value="Captain">Captain</option>
			<option value="First_Officer">First Officer</option>
			<option value="Junior_Officer">Junior Officer</option>
		</select> <br /> Flight ID: <br /> <input name="fid" type="text"></input>
		<hr />
		<hr />

		<button type="submit">Add pilot to the flight</button>
		<hr />
	</form></h:column>
			<h:column>
			<h1>Add Passenger</h1>

	<form action="AddPassenger" method="POST">
		First name: <br /> <input name="first_name" type="text"></input> <br />
		Last name: <br /> <input name="last_name" type="text"></input> <br />
		Date of Birth: <br /> <input name="dob" type="text"></input> <br />
		Gender: <br /> <select name="gender">
			<option value="Male">Man</option>
			<option value="Female">Woman</option>
		</select> <br />
		<hr />
		<hr />
		<button type="submit">Add Passenger</button>
		<hr />
	</form>
			</h:column>
			<h:column>
			<h2>
		Add Passenger to Flight
		</h2>

		<form action="AddPassengerToFlight" method="POST">

			Add passenger with the ID:: <input name="pid" type="text"></input> to
			the Flight with the ID:: <input name="fid" type="text"></input>
			<button type="submit">Add Passenger to Flight</button>
			<br />
			<hr />
			<hr />
		</form>
			</h:column>
			<h:column>
			<h2>
			Add flight to passenger <span
				style="font-family: serif; font-size: 16px">(give another
				ticket)</span>
		</h2>
		<form action="AddFlightTicketToPassenger" method="POST">
			Add ticket for a flight with the ID: <input name="fid" type="text"></input>
			to a passenger with the ID: <input name="pid" type="text"></input> <br />
			<hr />
			<span style="font-weight: bold;">In real world terms - add the
				flight ticket to the passenger's collection of flight tickets)</span>
			<hr />
			<button type="submit">Add Flight ticket to Passenger's
				collection</button>
			<hr />
		</form>
			</h:column>
<h2>JSP URI, URL, Context</h2>

Request Context Path: <%= request.getContextPath() %><br /><hr />
Request URI:          <%= request.getRequestURI() %><br /><hr />
Request URL:          <%= request.getRequestURL() %><br /><hr />
		</table><%! 
 int pageCount = 0;
 void addCount() {
   pageCount++;
 }
%><% addCount(); %><%@include file="footer.jsp"%><center>
<p>This site has been visited <%= pageCount %> times.</p>
</center></f:view></body>
</html>