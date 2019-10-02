Feature: Mini Blog Derscriptions
	
	As I user
	I can be capable posts anything  

	@wip
	Scenario: Posting succesfully 
		Given a new Post
		When I create a post with the content "New post"
		Then The content should be "New post"
		When I create a post with the recipient_id 1
		Then The recipient_id should be 1