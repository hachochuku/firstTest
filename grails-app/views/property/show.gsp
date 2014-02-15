
<%@ page import="com.cream.Property" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-property" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-property" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list property">
			
				<g:if test="${propertyInstance?.currentOperator}">
				<li class="fieldcontain">
					<span id="currentOperator-label" class="property-label"><g:message code="property.currentOperator.label" default="Current Operator" /></span>
					
						<span class="property-value" aria-labelledby="currentOperator-label"><g:link controller="operator" action="show" id="${propertyInstance?.currentOperator?.id}">${propertyInstance?.currentOperator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="property.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${propertyInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="property.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${propertyInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="property.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${propertyInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyInstance?.units}">
				<li class="fieldcontain">
					<span id="units-label" class="property-label"><g:message code="property.units.label" default="Units" /></span>
					
						<span class="property-value" aria-labelledby="units-label"><g:fieldValue bean="${propertyInstance}" field="units"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:propertyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${propertyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
