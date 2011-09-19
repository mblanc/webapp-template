<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<ul class="breadcrumb">
    <li><a href="${pageContext.request.contextPath}/">Home</a> <span class="divider">/</span></li>
    <li class="active">Users</li>
</ul>
<h1>Users</h1>
<table id="sortTable" class="zebra-striped">
	<thead> 
	   	<tr>
	   		<th>#</th>
	   		<th>Firstname</th>
	   		<th>Lastname</th>
	   		<th>Actions</th>
	   	</tr>
   	</thead>
   	<tbody>
	   	<c:forEach items="${users}" var="user">
	   		<tr>
	   			<td><a href="<c:url value="/users/${user.id}" />">${user.id}</a></td>
	   			<td>${user.firstname}</td>
	   			<td>${user.lastname}</td>
	   			<td>
					<a href="<c:url value="/users/${user.id}/edit" />">Edit</a>
				</td>
	   		</tr>
		</c:forEach>
	</tbody>
</table>
<div>
  	<a class="btn" href="<c:url value="/users/new" />">New</a>
</div>
<script src="${pageContext.request.contextPath}/js/jquery.tablesorter.min.js"></script>
<script>
	$(document).ready(function(){
		$("#sortTable").tablesorter();
	});
</script>

