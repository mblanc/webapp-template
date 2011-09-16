<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<spring:url value="/users" var="actionUrl" />
<form:form commandName="user" method="post" action="${actionUrl}">
	<fieldset>
		<form:hidden path="id" />
		<label for="firstname">firstname</label>
		<form:input path="firstname" />
		<form:errors path="firstname" cssClass="error" />
		<label for="lastname">lastname</label>
		<form:input path="lastname" />
		<form:errors path="lastname" cssClass="error" />
		<input type="submit" value="Create" />
	</fieldset>
</form:form>