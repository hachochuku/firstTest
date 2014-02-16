package com.cream

import grails.rest.RestfulController;

class OperatorController extends RestfulController{
	static scaffold = true
	static responseFormats = ['json','xml']
	OperatorController(){
		super(Operator)
	}
    def index() { }
}
