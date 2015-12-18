<%@ page import="java.util.*, com.airline.models.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Flights List</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/jpaStyles.css" />
</head>
<body>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
	<h1>List of Flights</h1>

	<table>
		<tr>
			<th>-ID-</th>
			<th>From</th>
			<th>To</th>
			<th>Time</th>
			<th>Price</th>
			<th>Airplane</th>
			<th>Seats</th>
			<th>Number of Pilots</th>
			<th>Pilots names</th>
		</tr>

		<tr>
			<%
				List<Flight> fList = (List<Flight>) request.getAttribute("flight_list");
				for (Integer i = 0; i < fList.size(); i++) {
			%>
			<td><%=fList.get(i).getId()					%></td>
			<td><%=fList.get(i).getFlightOrigin()		%></td>
			<td><%=fList.get(i).getFlightDestination()	%></td>
			<td><%=fList.get(i).getFlightTime()			%></td>
			<td><%=fList.get(i).getPrice()				%></td>

			<td><%=fList.get(i).getAirplaneDetail().getPlaneMake() + " " + fList.get(i).getAirplaneDetail().getModelName()%></td>
			<td><%=fList.get(i).getAirplaneDetail().getSeatingCapacity()%></td>

			<td><%
			if(fList.get(i).getPilots() != null) {
				%>
			<%=fList.get(i).getPilots().size()%> pilots
				<%
			} else {
			%>
			No pilots added "airplaneDetail"
			<% } %>
			</td>
			<td>
			<%
			if(fList.get(i).getPilots() != null) {
				List<Pilot> pList = (List<Pilot>) fList.get(i).getPilots();
				for (Integer j = 0 ; j<pList.size() ; j++) {
					
				%>
				
						<%=
						(j+1) + ") " + pList.get(j).getFirstName() + " " + pList.get(j).getLastName() + " [" + pList.get(j).getPilotRank() + "]" + "<br/>"
						%>
			<% }//for
				
			} //if	%>
			</td>
			
		</tr>
		<tr>
			<td colspan="9">
								<%
								if(fList.get(i).getPassengers().size()>0) {
									List<Passenger> passengerList = (List<Passenger>) fList.get(i).getPassengers();
									
									for (Integer k=0 ; k<passengerList.size() ; k++ ) {
								%>
								
											<%= k+1 %>) <%= passengerList.get(k).getFirstName() %> <%= passengerList.get(k).getLastName() %> <br /> 
								
								<% }//for 
										} else {
								%>
								No passengers on this flight yet
								<% } %>
			</td>
		</tr>
		
		<%
			}
		%>
	</table>
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>

</body>
</html>