<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<ul class="breadcrumb">
    <li><a href="${pageContext.request.contextPath}/">Home</a> <span class="divider">/</span></li>
    <li><a href="${pageContext.request.contextPath}/users/">Users</a> <span class="divider">/</span></li>
    <li class="active">New</li>
   </ul>
<spring:url value="/users" var="actionUrl" />
<form:form commandName="user" method="post" action="${actionUrl}">
	<fieldset>
		<form:hidden path="id" />
		<div class="clearfix">
			<label for="firstname">firstname</label>
			<div class="input">
				<form:input path="firstname" />
				<form:errors path="firstname" cssClass="error" />
			</div>
		</div>
		<div class="clearfix">
			<label for="lastname">lastname</label>
			<div class="input">
				<form:input path="lastname" />
				<form:errors path="lastname" cssClass="error" />
			</div>
		</div>
		<div class="actions">
			<input class="btn primary" type="submit" value="Create" />
			<a class="btn" href="<c:url value="/users/" />">Cancel</a>
		</div>
	</fieldset>
</form:form>