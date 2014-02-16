package com.cream

import grails.rest.RestfulController;

class PropertyController extends RestfulController{
	static scaffold = true
	static responseFormats = ['json','xml']
	PropertyController(){
		super(Property)
	}
    def index() { }
}
