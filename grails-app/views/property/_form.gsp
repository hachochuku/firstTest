<%@ page import="com.cream.Property" %>



<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'currentOperator', 'error')} ">
	<label for="currentOperator">
		<g:message code="property.currentOperator.label" default="Current Operator" />
		
	</label>
	<g:select id="currentOperator" name="currentOperator.id" from="${com.cream.Operator.list()}" optionKey="id" value="${propertyInstance?.currentOperator?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="property.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${propertyInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="property.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" type="number" value="${propertyInstance.latitude}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="property.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" type="number" value="${propertyInstance.longitude}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: propertyInstance, field: 'units', 'error')} required">
	<label for="units">
		<g:message code="property.units.label" default="Units" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="units" type="number" value="${propertyInstance.units}" required=""/>
</div>

