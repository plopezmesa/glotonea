
<%@ page import="es.glotonea.Foody" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'foody.label', default: 'Foody')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-foody" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "username")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "password")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.location.label" default="Location" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "location")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.website.label" default="Website" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "website")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.bio.label" default="Bio" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "bio")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.accountExpired.label" default="Account Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${foodyInstance?.accountExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${foodyInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.enabled.label" default="Enabled" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${foodyInstance?.enabled}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.foodies.label" default="Foodies" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${foodyInstance.foodies}" var="f">
						<li><g:link controller="foody" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: foodyInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="foody.passwordExpired.label" default="Password Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${foodyInstance?.passwordExpired}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
