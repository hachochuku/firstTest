package com.cream

import grails.rest.RestfulController;

class UserController extends RestfulController{
	static scaffold = true
	static responseFormats = ['json','xml']
	UserController(){
		super(User)	
	}

	//def index() { }
}
