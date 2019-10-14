require "rails_helper"
RSpec.feature "Posts", :type => :feature do
	scenario "creates a new post" do 
		visit "/posts/new"
		expect(page).to have_text("Post something")	
		#fill_in "content", :with => "New Content"
		fill_in "post_content", :with => "Bla bla bla"
		click_button "Create"	
		expect(page).to have_text("Post created")
	end
end