require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe "POST create" do
  	let(:post) { mock_model(Post).as_null_object }
  	it "creates a new Post" do
  		pending
		Post.should_receive(:new).with("content" => "New post")
		#.and_return(message)
		post :create, :post => { "content" => "New post" }
	end
  end 
end
