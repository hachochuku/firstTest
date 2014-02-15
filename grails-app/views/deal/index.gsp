
<%@ page import="com.cream.Deal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'deal.label', default: 'Deal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-deal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-deal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dealCloseDate" title="${message(code: 'deal.dealCloseDate.label', default: 'Deal Close Date')}" />
					
						<g:sortableColumn property="dealOpenDate" title="${message(code: 'deal.dealOpenDate.label', default: 'Deal Open Date')}" />
					
						<th><g:message code="deal.prop.label" default="Prop" /></th>
					
						<g:sortableColumn property="requiredCapital" title="${message(code: 'deal.requiredCapital.label', default: 'Required Capital')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dealInstanceList}" status="i" var="dealInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dealInstance.id}">${fieldValue(bean: dealInstance, field: "dealCloseDate")}</g:link></td>
					
						<td><g:formatDate date="${dealInstance.dealOpenDate}" /></td>
					
						<td>${fieldValue(bean: dealInstance, field: "prop")}</td>
					
						<td>${fieldValue(bean: dealInstance, field: "requiredCapital")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dealInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
