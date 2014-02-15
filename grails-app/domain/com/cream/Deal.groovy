package com.cream

import grails.rest.Resource

@Resource (formats=['json','xml'],uri='/deals')
class Deal {

	Property prop
	Float requiredCapital
	Date dealCloseDate
	Date dealOpenDate

    static constraints = {
    }
}
