Feature: Mini Blog Derscriptions
	
	As I user
	I can be capable posts anything  

	@wip
	Scenario: Posting succesfully 
		Given a new Post
		When I create a posts with the content "New post"
		Then The content should be "New posts"
    
	Scenario: New Post with recipent
		Given a new Post with recipent
		When I create a posts with the recipent nil
		Then The recipent should be nil