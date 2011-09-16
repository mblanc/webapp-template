<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<div id="list">
	<c:forEach items="${users}" var="user">
		<h1>${user.id} ${user.firstname} ${user.lastname}</h1>
		<span>
			<a href="<c:url value="/users/${user.id}" />">View</a>
			<a href="<c:url value="/users/${user.id}/edit" />">Edit</a>
		</span>
	</c:forEach>
</div>
<div id="command">
	<a href="<c:url value="/users/new" />">New</a>
</div>
