package com.cream

import grails.rest.Resource

class Property {
	String address
	Float longitude
	Float latitude
	Integer units
	Operator currentOperator

    static constraints = {
		currentOperator nullable: true 
    }
}
