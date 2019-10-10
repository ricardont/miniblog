require 'rails_helper'

RSpec.describe PostsController, type: :controller, controllers: true  do 
  before(:all) { Post.destroy_all }
  describe "GET #index" do
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
    let(:post_new) { FactoryBot.create(:post) }  
    it 'it redirects to posts index' do
      pending "dont know how to test this"
      #@post_new = Post.find(1)
      #delete :destroy, id: @post_new.id
      delete :destroy, id: post_new
      #post :destroy, :params => { :delete => { :id => @post_new.id } }
      expect(response).to render_template('index')
    end
  end
end
