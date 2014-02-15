
<%@ page import="com.cream.Bid" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bid.label', default: 'Bid')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bid" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bid" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bid">
			
				<g:if test="${bidInstance?.amountOffered}">
				<li class="fieldcontain">
					<span id="amountOffered-label" class="property-label"><g:message code="bid.amountOffered.label" default="Amount Offered" /></span>
					
						<span class="property-value" aria-labelledby="amountOffered-label"><g:fieldValue bean="${bidInstance}" field="amountOffered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bidInstance?.biddingUser}">
				<li class="fieldcontain">
					<span id="biddingUser-label" class="property-label"><g:message code="bid.biddingUser.label" default="Bidding User" /></span>
					
						<span class="property-value" aria-labelledby="biddingUser-label"><g:link controller="user" action="show" id="${bidInstance?.biddingUser?.id}">${bidInstance?.biddingUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bidInstance?.dateOffered}">
				<li class="fieldcontain">
					<span id="dateOffered-label" class="property-label"><g:message code="bid.dateOffered.label" default="Date Offered" /></span>
					
						<span class="property-value" aria-labelledby="dateOffered-label"><g:formatDate date="${bidInstance?.dateOffered}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bidInstance?.dealOffered}">
				<li class="fieldcontain">
					<span id="dealOffered-label" class="property-label"><g:message code="bid.dealOffered.label" default="Deal Offered" /></span>
					
						<span class="property-value" aria-labelledby="dealOffered-label"><g:link controller="deal" action="show" id="${bidInstance?.dealOffered?.id}">${bidInstance?.dealOffered?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bidInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bidInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
