package com.cream

import grails.rest.Resource

@Resource (formats=['json','xml'],uri='/users')
class User {

	String username
	String firstName
	String lastName
	String emailAddress
	
    static constraints = {
    }
}
