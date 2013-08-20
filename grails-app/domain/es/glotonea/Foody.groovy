package es.glotonea

class Foody extends User{

	String name;
	String email;
	String location;
	String website;
	String bio;
	
	static hasMany = [foodies: Foody]
	
	
	static constraints = {
		email blank:false, unique:true, email:true
		location maxSize: 100
		website url: true
		bio maxSize: 250
	}
	
	
}
