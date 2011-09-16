<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<spring:url value="/users/{id}" var="actionUrl">
	<spring:param name="id" value="${user.id}" />
</spring:url>
<form:form commandName="user" method="put" action="${actionUrl}">
	<fieldset>
		<form:hidden path="id" />
		<label for="firstname">firstname</label>
		<form:input path="firstname" />
		<form:errors path="firstname" cssClass="error" />
		<label for="lastname">lastname</label>
		<form:input path="lastname" />
		<form:errors path="lastname" cssClass="error" />
		<input type="submit" value="Update" />
	</fieldset>
</form:form>