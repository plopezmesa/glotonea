
<%@ page import="es.glotonea.Foody" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'foody.label', default: 'Foody')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-foody" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'foody.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'foody.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'foody.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="location" title="${message(code: 'foody.location.label', default: 'Location')}" />
			
				<g:sortableColumn property="website" title="${message(code: 'foody.website.label', default: 'Website')}" />
			
				<g:sortableColumn property="bio" title="${message(code: 'foody.bio.label', default: 'Bio')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${foodyInstanceList}" status="i" var="foodyInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${foodyInstance.id}">${fieldValue(bean: foodyInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: foodyInstance, field: "password")}</td>
			
				<td>${fieldValue(bean: foodyInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: foodyInstance, field: "location")}</td>
			
				<td>${fieldValue(bean: foodyInstance, field: "website")}</td>
			
				<td>${fieldValue(bean: foodyInstance, field: "bio")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${foodyInstanceTotal}" />
	</div>
</section>

</body>

</html>
