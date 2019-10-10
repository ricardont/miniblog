Given("a new Post") do
   @post = Post.create!
end

When("I create a post with the content {string}") do |string|
  @post.update_attribute(:content, string)
end

Then("The content should be {string}") do |string|
  expect(@post.content).to eq(string)
end

When("I create a post with the recipient_id {int}") do |int|
  @post.update_attribute(:recipient_id, int)
end

Then("The recipient_id should be {int}") do |int|
  expect(@post.recipient_id).to eq(int)
end

