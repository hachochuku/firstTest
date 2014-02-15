package com.cream

import grails.rest.Resource

@Resource (formats=['json','xml'],uri='/bids')
class Bid {

	Deal dealOffered
	User biddingUser
	Float amountOffered
	Date dateOffered
	
    static constraints = {
    }
}
