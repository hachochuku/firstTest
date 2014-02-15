<%@ page import="com.cream.Deal" %>



<div class="fieldcontain ${hasErrors(bean: dealInstance, field: 'dealCloseDate', 'error')} required">
	<label for="dealCloseDate">
		<g:message code="deal.dealCloseDate.label" default="Deal Close Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dealCloseDate" precision="day"  value="${dealInstance?.dealCloseDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: dealInstance, field: 'dealOpenDate', 'error')} required">
	<label for="dealOpenDate">
		<g:message code="deal.dealOpenDate.label" default="Deal Open Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dealOpenDate" precision="day"  value="${dealInstance?.dealOpenDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: dealInstance, field: 'prop', 'error')} required">
	<label for="prop">
		<g:message code="deal.prop.label" default="Prop" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prop" name="prop.id" from="${com.cream.Property.list()}" optionKey="id" required="" value="${dealInstance?.prop?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: dealInstance, field: 'requiredCapital', 'error')} required">
	<label for="requiredCapital">
		<g:message code="deal.requiredCapital.label" default="Required Capital" />
		<span class="required-indicator">*</span>
	</label>
	<g:currencySelect name="requiredCapital" value="${dealInstance?.requiredCapital}"  />
</div>

