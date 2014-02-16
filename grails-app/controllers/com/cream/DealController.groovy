package com.cream

import grails.rest.RestfulController

class DealController extends RestfulController {
	static scaffold = true
	static responseFormats = ['json','xml']
	DealController(){
		super(Deal)
	}
    def index() { }
}
