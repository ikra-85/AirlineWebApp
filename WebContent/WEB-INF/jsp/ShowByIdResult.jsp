<%@ page import="java.util.*, com.airline.models.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>

<html>
<head>
<title>Show by ID</title>
</head>
<body>
	<h1>Show information by ID</h1>
	<form action="ShowByIdPage" method="post">
	<% Flight f = (Flight) request.getAttribute("flight");%>
	<%	Passenger p = (Passenger) request.getAttribute("passenger");%>
		<table border="3">
<tr><td>Flight:</td><td>
										<table border="3" width="100%">
				<tr><td>ID</td><td>From</td><td>Destination</td><td>Passengers</td><td>Price</td></tr>
				<tr>
				<td><%= f.getId() %></td> <td><%=f.getFlightOrigin() %></td><td><%=f.getFlightDestination()%></td><td><%=f.getPassengers()%></td><td><%=f.getPrice()%></td>
				</tr>
									</table>
										</td></tr>
<%-- <tr><td>Pilot:</td><td><%	Pilot t = (Pilot) request.getAttribute("pilot");%>
	
										<table border="3" width="100%">
				<tr><td>ID</td><td>First name</td><td>Last name</td><td>License</td><td>Rank</td></tr>
				<tr>
				<td><%= t.getId() %></td> <td><%=t.getFirstName()%></td><td><%=t.getLastName()%></td><td><%=t.getPilotLicense()%></td><td><%=t.getPilotRank()%></td>
				</tr>
									</table>
										</td>	</tr>
 --%>			 
	<tr><td>Passenger:</td><td>
										<table border="1" width="100%">
				<tr><td>ID</td><td>First name</td><td>Last name</td><td>Birth</td><td>Gender</td></tr>
				<tr>
				<td><%= p.getId() %></td> <td><%=p.getFirstName()%></td><td><%=p.getLastName()%></td><td><%=p.getDob()%></td><td><%=p.getGender()%></td>
				</tr>
									</table>
										</td>
											</tr>
			
	<%-- <tr><td>Airplane(by Registration number):</td><td>
				<table border="1" width="100%">
				<tr><td>ID</td><td>Plane model</td><td>Number</td><td>Seats</td></tr>
				<tr>	<%	Airplane a = (Airplane) request.getAttribute("airplane");%>
				
				<td><%= a.getId() %></td> <td><%=a.getPlaneMake()%></td><td><%=a.getModelName()%></td><td><%=a.getSeatingCapacity()%></td>
				</tr>
									</table>
										</td>	</tr> --%>
			<tr><td></td><td><input type="submit" value="Get back"></td>
			</tr>
		</table>

	</form>
	<%@ include file="/WEB-INF/jsp/control.jsp"%>
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>

<%-- <table>
		<tr><th>-ID-</th><th>First name</th><th>Last name</th><th>Date of Birth</th><th>Gender</th></tr>
		<tr>
			
			
			
		</tr>
</table> --%>
			<%-- <%	List<Passenger> pList = (List<Passenger>) request.getAttribute("passengers_list");
				for (Integer i = 0; i < pList.size(); i++) {	%>	
			<th>-ID-</th><td><%=pList.get(i).getId()%></td>
			<th>First name</th><td><%=pList.get(i).getFirstName()%></td>
			<th>Last name</th><td><%=	pList.get(i).getLastName()%></td>
			<th>Date of Birth</th><td><%=	pList.get(i).getDob()%></td>
			<th>Gender</th><td><%=pList.get(i).getGender()%></td>
			<% 			}		%> --%>