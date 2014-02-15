
<%@ page import="com.cream.Property" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-property" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-property" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="property.currentOperator.label" default="Current Operator" /></th>
					
						<g:sortableColumn property="address" title="${message(code: 'property.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'property.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'property.longitude.label', default: 'Longitude')}" />
					
						<g:sortableColumn property="units" title="${message(code: 'property.units.label', default: 'Units')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${propertyInstanceList}" status="i" var="propertyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${propertyInstance.id}">${fieldValue(bean: propertyInstance, field: "currentOperator")}</g:link></td>
					
						<td>${fieldValue(bean: propertyInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: propertyInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: propertyInstance, field: "longitude")}</td>
					
						<td>${fieldValue(bean: propertyInstance, field: "units")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${propertyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
