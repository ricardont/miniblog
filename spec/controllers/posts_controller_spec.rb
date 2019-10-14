require 'rails_helper'

RSpec.describe PostsController, type: :controller, controllers: true  do 
  #before(:all) { @new_post = Post.create( content:'content')}
  after(:all) { Post.destroy_all }
  #before(:all) { Post.destroy_all }
  describe "`ET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe "POST create" do
    it "creates a new post" do
      post :create, :params => { :post => { :content => "new content" } }
    end
    context "when the message saves successfully" do
      it "redirects to the Posts index" do
        post :create, :params => { :post => { :content => "new content" } }
        expect(response).to redirect_to(:action => "index")
      end
    end
  end 
  describe "POSTS Delete" do
    pending "dont know how to test this"
    it 'it redirects to posts index' do
    end
  end
end
