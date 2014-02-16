package com.cream

import grails.rest.RestfulController

class BidController extends RestfulController {
	static scaffold = true
	static responseFormats = ['json','xml']
	BidController(){
		super(Bid)	
	}

    def index() { }
}
