Feature: Mini Blog Derscriptions
	
	As I user
	I can be capable posts anything  

	@wip
	Scenario: Posting succesfully 
		Given a new Post
		When I create a posts with the content "New post"
		Then The content should be "New post"
		When I create a posts with the recipient 1
		Then The recipient should be 1