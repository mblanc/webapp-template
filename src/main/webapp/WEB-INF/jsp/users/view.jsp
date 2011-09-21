<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<ul class="breadcrumb">
    <li><a href="${pageContext.request.contextPath}/">Home</a> <span class="divider">/</span></li>
    <li><a href="${pageContext.request.contextPath}/users/">Users</a> <span class="divider">/</span></li>
    <li class="active">${user.id}</li>
   </ul>
<div>Firstname : ${user.firstname}</div>
<div>Lastname : ${user.lastname}</div>
<div class="actions">
  	<a class="btn primary" href="<c:url value="/users/${user.id}/edit" />">Edit</a>
  	<input class="btn danger" type="submit" onclick="if (confirm('Are you sure?')) { document.forms['delete'].submit();}return false;" value="Delete"/>
  	<form:form cssClass="hide" id="delete" method="delete">
	</form:form>
</div>
<div>
	<a class="btn" href="<c:url value="/users" />">Users</a>	
</div>