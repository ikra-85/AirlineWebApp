<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<html>
<head>
<title>${person.name}</title>
</head>
<body>
	<h1>${person.name}</h1>
	<ul>
		<c:set var="address" value="${person.address}" />
		<li>${address.street}</li>
		<li>${address.city}, ${address.state} ${address.zip}</li>
		<li>manager: ${person.manager.name}</li>
		<li>employer: ${person.employer.name}</li>
	</ul>
	<a href="${person.url}&edit">edit person</a> |
<%@ include file="/WEB-INF/jsp/control.jsp" %>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>

</body>
</html>