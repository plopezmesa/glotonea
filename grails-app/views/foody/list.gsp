
<%@ page import="es.glotonea.Foody" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'foody.label', default: 'Foody')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-foody" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-foody" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
				<g:paginate total="${foodyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
