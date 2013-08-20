<%@ page import="es.glotonea.Foody" %>



			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="foody.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${foodyInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="foody.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${foodyInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="foody.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="email" name="email" required="" value="${foodyInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'location', 'error')} ">
				<label for="location" class="control-label"><g:message code="foody.location.label" default="Location" /></label>
				<div class="controls">
					<g:textField name="location" maxlength="100" value="${foodyInstance?.location}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'location', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'website', 'error')} ">
				<label for="website" class="control-label"><g:message code="foody.website.label" default="Website" /></label>
				<div class="controls">
					<g:field type="url" name="website" value="${foodyInstance?.website}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'website', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'bio', 'error')} ">
				<label for="bio" class="control-label"><g:message code="foody.bio.label" default="Bio" /></label>
				<div class="controls">
					<g:textField name="bio" maxlength="250" value="${foodyInstance?.bio}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'bio', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="foody.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${foodyInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="foody.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${foodyInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="foody.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${foodyInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'foodies', 'error')} ">
				<label for="foodies" class="control-label"><g:message code="foody.foodies.label" default="Foodies" /></label>
				<div class="controls">
					<g:select name="foodies" from="${es.glotonea.Foody.list()}" multiple="multiple" optionKey="id" size="5" value="${foodyInstance?.foodies*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'foodies', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="foody.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${foodyInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: foodyInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="foody.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${foodyInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: foodyInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

