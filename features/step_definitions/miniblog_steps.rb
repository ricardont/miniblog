Given("a new Post") do
  @post = Post.create!
end

When("I create a posts with the content {string}") do |string|
  @post.update_attribute(:content, string)
end

Then("The content should be {string}") do |string|
  @post.content.shoild string
end

Given("a new Post with recipent") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I create a posts with the recipent nil") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The recipent should be nil") do
  pending # Write code here that turns the phrase above into concrete actions
end
