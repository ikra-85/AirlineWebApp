<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>Add Passenger</title>
</head>
<body>
	<h1>Add person</h1>
	<form action="person" method="post">
		<ul>
			<li>name: <input type="text" name="first_name"></li>
			<li>name: <input type="text" name="last_name"></li>
			<li>street: <input type="text" name="street"></li>
			<li>city: <input type="text" name="city"></li>
			<li>state: <input type="text" name="state"></li>
			<li>zip: <input type="text" name="zip"></li>
		</ul>
		<input type="submit" value="add">
	</form>
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>