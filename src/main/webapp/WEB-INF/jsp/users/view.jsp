<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<h1>${user.firstname} ${user.lastname}</h1>
<a href="<c:url value="/users/${user.id}/edit" />">Edit</a>
<a href="<c:url value="/users" />">Users</a>
<form:form method="delete">
    <p class="submit"><input type="submit" onclick="if (confirm('Are you sure?')) { return true; };return false;" value="Delete"/></p>
</form:form>