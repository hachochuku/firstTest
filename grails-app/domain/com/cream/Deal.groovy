package com.cream

import grails.rest.Resource

class Deal {

	Property prop
	Float requiredCapital
	Date dealCloseDate
	Date dealOpenDate

    static constraints = {
    }
}
