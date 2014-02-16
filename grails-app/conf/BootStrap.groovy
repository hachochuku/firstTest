import com.cream.Bid
import com.cream.Deal
import com.cream.Operator
import com.cream.Property
import com.cream.User

class BootStrap {

    def init = { servletContext ->
		
		//Users
		new User(
			firstName: "Anochie",
			lastName: "Ugochuku",
			emailAddress: "noch3p0@gmail.com",
			username: "WillSmith").save(failonError:true,flush:true)
			
		new User(
			firstName: "Lorainna",
			lastName: "Bobbit",
			emailAddress: "emailaddy@gmail.com",
			username: "lbobbit").save(failonError:true,flush:true)
			
		new User(
			firstName: "Katarina",
			lastName: "Kutchokokoff",
			emailAddress: "kkutch@somewhere.com",
			username:"kkutch").save(failonError:true,flush:true)
			
		new User(
			firstName: "Lyquoc",
			lastName: "Vo",
			emailAddress: "lvo@somewhere.com",
			username:"lvo").save(failonError:true,flush:true)
		
			
			
			
		// Operators
			
		def Operator firstOp = new Operator(
			userAcct: User.get(1)
		).save(failOnError:true)
		
		def Operator secondOp = new Operator(
			userAcct: User.get(2)
		).save(failOnError:true)
		
		
		
		
		//Properties
		
		new Property(		
			address: "1234 Main street",
			longitude: new Float (1.1234),
			latitude: new Float (359.9999),
			units: 84,
			currentOperator: firstOp).save(failOnError:true,flush:true)
	
		new Property(
			address: "2345 Minor street",
			longitude: new Float(2.4321),
			latitude: new Float(358.8888),
			units: 16,
			currentOperator: firstOp).save(failOnError:true,flush:true)


		new Property(
			address: "3456 Random street",
			longitude: new Float(3.5678),
			latitude: new Float(357.7777),
			units: 10,
			currentOperator: secondOp).save(failOnError:true,flush:true)
		
		//Deals
			
		new Deal(
			prop: Property.get(1),
			dealOpenDate: new Date(2014,1,1),
			dealCloseDate: new Date(2014,4,30),
			requiredCapital: new Float(84000286)
		).save(failOnError:true)

		new Deal(
			prop: Property.get(2),
			dealOpenDate: new Date(2013,12,1),
			dealCloseDate: new Date(2014,3,30),
			requiredCapital: new Float(22674891),
		).save(failOnError:true)

		new Deal(
			prop: Property.get(3),
			dealOpenDate: new Date(2014,2,1),
			dealCloseDate: new Date(2014,5,31),
			requiredCapital: new Float(87348971),
		).save(failOnError:true)
		
		
		//Bids
		new Bid(
			amountOffered: 1000000,
			biddingUser: User.get(3),
			dateOffered: new Date(2014,1,12),
			dealOffered: Deal.get(1)    
		).save(failOnError:true)

		new Bid(
			amountOffered: 1000000,
			biddingUser: User.get(4),
			dateOffered: new Date(2014,1,12),
			dealOffered: Deal.get(3)
		).save(failOnError:true)
									
    }
    def destroy = {
    }
}
