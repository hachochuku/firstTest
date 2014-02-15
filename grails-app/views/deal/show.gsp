
<%@ page import="com.cream.Deal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'deal.label', default: 'Deal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-deal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-deal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list deal">
			
				<g:if test="${dealInstance?.dealCloseDate}">
				<li class="fieldcontain">
					<span id="dealCloseDate-label" class="property-label"><g:message code="deal.dealCloseDate.label" default="Deal Close Date" /></span>
					
						<span class="property-value" aria-labelledby="dealCloseDate-label"><g:formatDate date="${dealInstance?.dealCloseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealInstance?.dealOpenDate}">
				<li class="fieldcontain">
					<span id="dealOpenDate-label" class="property-label"><g:message code="deal.dealOpenDate.label" default="Deal Open Date" /></span>
					
						<span class="property-value" aria-labelledby="dealOpenDate-label"><g:formatDate date="${dealInstance?.dealOpenDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealInstance?.prop}">
				<li class="fieldcontain">
					<span id="prop-label" class="property-label"><g:message code="deal.prop.label" default="Prop" /></span>
					
						<span class="property-value" aria-labelledby="prop-label"><g:link controller="property" action="show" id="${dealInstance?.prop?.id}">${dealInstance?.prop?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealInstance?.requiredCapital}">
				<li class="fieldcontain">
					<span id="requiredCapital-label" class="property-label"><g:message code="deal.requiredCapital.label" default="Required Capital" /></span>
					
						<span class="property-value" aria-labelledby="requiredCapital-label"><g:fieldValue bean="${dealInstance}" field="requiredCapital"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dealInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dealInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
