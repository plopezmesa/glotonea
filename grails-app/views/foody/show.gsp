
<%@ page import="es.glotonea.Foody" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'foody.label', default: 'Foody')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-foody" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-foody" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list foody">
			
				<g:if test="${foodyInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="foody.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${foodyInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="foody.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${foodyInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="foody.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${foodyInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="foody.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${foodyInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="foody.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${foodyInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="foody.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${foodyInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="foody.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${foodyInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="foody.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${foodyInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="foody.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${foodyInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.foodies}">
				<li class="fieldcontain">
					<span id="foodies-label" class="property-label"><g:message code="foody.foodies.label" default="Foodies" /></span>
					
						<g:each in="${foodyInstance.foodies}" var="f">
						<span class="property-value" aria-labelledby="foodies-label"><g:link controller="foody" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="foody.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${foodyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${foodyInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="foody.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${foodyInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${foodyInstance?.id}" />
					<g:link class="edit" action="edit" id="${foodyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
