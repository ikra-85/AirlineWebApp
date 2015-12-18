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
	<form action="ShowById.do" method="post">
		<table>
			<tr><td>Flight:</td><td><input name="fid" type="text"></td>		</tr>
			<!-- <tr><td>Pilot:</td><td><input type="text" name="license"></td>	</tr>
			 -->
			<tr><td>Passenger:</td><td><input name="pid" type="text"></td>	</tr>
			
			
<!-- 			<tr><td>Airplane(by Registration number):</td><td><input type="text" name="number"></td>	</tr>
 -->			<tr><td></td><td><input type="submit" value="Show"></td>
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