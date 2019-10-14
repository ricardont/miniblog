require 'rails_helper'
RSpec.describe Post, type: :model, models: true  do
  before(:all) { @new_post = Post.create( content:'content')}
  after(:all) { Post.destroy_all }
  it "has one after adding one" do
    expect(Post.count).to eq 1
  end
  it "has zero after create and delete" do
    Post.delete(@new_post)
    expect(Post.count).to eq 0
  end
  it "update content" do
    @new_post.update(content:'new content')
    expect(@new_post.content).to eq 'new content'
  end  
  it "create with empty content" do
    #Post.create(content:'')
    #expect(@new_post.content).to eq 'new content'
  end  
end
