<%@ page import="es.glotonea.Foody" %>



<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="foody.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${foodyInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="foody.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${foodyInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="foody.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${foodyInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="foody.location.label" default="Location" />
		
	</label>
	<g:textField name="location" maxlength="100" value="${foodyInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="foody.website.label" default="Website" />
		
	</label>
	<g:field type="url" name="website" value="${foodyInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="foody.bio.label" default="Bio" />
		
	</label>
	<g:textField name="bio" maxlength="250" value="${foodyInstance?.bio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="foody.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${foodyInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="foody.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${foodyInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="foody.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${foodyInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'foodies', 'error')} ">
	<label for="foodies">
		<g:message code="foody.foodies.label" default="Foodies" />
		
	</label>
	<g:select name="foodies" from="${es.glotonea.Foody.list()}" multiple="multiple" optionKey="id" size="5" value="${foodyInstance?.foodies*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="foody.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${foodyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: foodyInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="foody.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${foodyInstance?.passwordExpired}" />
</div>

