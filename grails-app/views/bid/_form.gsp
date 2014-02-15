<%@ page import="com.cream.Bid" %>



<div class="fieldcontain ${hasErrors(bean: bidInstance, field: 'amountOffered', 'error')} required">
	<label for="amountOffered">
		<g:message code="bid.amountOffered.label" default="Amount Offered" />
		<span class="required-indicator">*</span>
	</label>
	<g:currencySelect name="amountOffered" value="${bidInstance?.amountOffered}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bidInstance, field: 'biddingUser', 'error')} required">
	<label for="biddingUser">
		<g:message code="bid.biddingUser.label" default="Bidding User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="biddingUser" name="biddingUser.id" from="${com.cream.User.list()}" optionKey="id" required="" value="${bidInstance?.biddingUser?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bidInstance, field: 'dateOffered', 'error')} required">
	<label for="dateOffered">
		<g:message code="bid.dateOffered.label" default="Date Offered" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOffered" precision="day"  value="${bidInstance?.dateOffered}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bidInstance, field: 'dealOffered', 'error')} required">
	<label for="dealOffered">
		<g:message code="bid.dealOffered.label" default="Deal Offered" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dealOffered" name="dealOffered.id" from="${com.cream.Deal.list()}" optionKey="id" required="" value="${bidInstance?.dealOffered?.id}" class="many-to-one"/>
</div>

