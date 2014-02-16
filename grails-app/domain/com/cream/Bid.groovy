package com.cream

import grails.rest.Resource

class Bid {

	Deal dealOffered
	User biddingUser
	Float amountOffered
	Date dateOffered
	
    static constraints = {
    }
}
