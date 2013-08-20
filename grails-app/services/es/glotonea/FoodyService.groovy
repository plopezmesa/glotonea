package es.glotonea

class FoodyService {

	def springSecurityService
	
    def follow(Foody foody) {
		Foody user = springSecurityService.currentUser
		user.foodies.add(foody);
    }
	
	def unfollow(Foody foody){
		Foody user = springSecurityService.currentUser
		user.foodies.remove(foody)
	}
	
	def findFoodies(String q){
		Foody.list(max:20)
	}
	
}
