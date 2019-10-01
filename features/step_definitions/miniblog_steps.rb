Given("a new Post") do
  @post = Post.create!
end

When("I create a posts with the content {string}") do |string|
  @post.update_attribute(:content, string)
end

Then("The content should be {string}") do |string|
  expect(@post.content).to eq(string)
end

When("I create a posts with the recipient {int}") do |int|
  @post.update_attribute(:recipient, int)
end

Then("The recipient should be {int}") do |int|
  expect(@post.recipient).to eq(int)
end
