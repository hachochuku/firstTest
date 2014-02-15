package com.cream

import grails.rest.Resource

@Resource (formats=['json','xml'],uri='/operators')
class Operator {
	User userAcct
    static constraints = {
    }
}
