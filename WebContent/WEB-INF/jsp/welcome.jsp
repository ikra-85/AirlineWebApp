<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<table background="/resources/images/welcome.jpg" width="100%" height="85%" style="background-repeat: no-repeat;">


<td>
<ul>
  <!-- <li><a href="/AirlineWebApp/login">Login</a> -->
  <li><a href="/AirlineWebApp/AddFlightPage">Add Flight</a>
  <li><a href="/AirlineWebApp/AddPilotPage">Add Pilot</a>
  <li><a href="/AirlineWebApp/AddPassengerPage">Add Passenger</a>
  <li><a href="/AirlineWebApp/EditByIdPage">Edit by ID</a>
  <li><a href="/AirlineWebApp/DeleteByIdPage">Delete by ID</a>
  <li><a href="/AirlineWebApp/ShowByIdPage">Show by ID</a>
  <!-- <li><a href="/AirlineWebApp/extra">Extra</a> -->
 <!--  <li><a href="/AirlineWebApp/logout">Log out</a> -->
</ul>
</td>
</table>




<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>