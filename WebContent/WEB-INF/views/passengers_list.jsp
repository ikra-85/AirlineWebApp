<%@ page import="java.util.*, com.airline.models.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Passengers List</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/jpaStyles.css" />
</head>
<body>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
	<h1>List of Passengers</h1>

	<table>
		<tr>
			<th>-ID-</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Date of Birth</th>
			<th>Gender</th>
		</tr>

		<tr>
			<%
				List<Passenger> pList = (List<Passenger>) request.getAttribute("passengers_list");
				for (Integer i = 0; i < pList.size(); i++) {
			%>
			<td><%=	pList.get(i).getId()		%></td>
			<td><%=	pList.get(i).getFirstName()	%></td>
			<td><%=	pList.get(i).getLastName()	%></td>
			<td><%=	pList.get(i).getDob()		%></td>
			<td><%=	pList.get(i).getGender()	%></td>
			
		</tr>

		<tr>
			<td colspan="5">
			<% 
			if(pList.get(i).getFlights().size()>0) {
			
				List<Flight> fList = (List<Flight>) pList.get(i).getFlights();
				for( Integer k = 0; k < fList.size(); k++ ){
			%>
			<%= k+1 %>) <%= fList.get(k).getFlightOrigin() %> to <%= fList.get(k).getFlightDestination() %> @ <%= fList.get(k).getFlightTime() %> <br />  
			<%	}
				} else {
			%>
			No flight tickets yet
			<%
			}
			%>
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