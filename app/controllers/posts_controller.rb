class PostsController < ApplicationController
  def index
  end
  def create
  	@post = Post.new(post_params)
  	if @post.save 
  		redirect_to :action => 'index'
  	else
  		flash.now[:error] = "Error saving post"
  		render :action => 'new'
  	end 
  end
  def destroy 
  	 @post = Post.find(params[:id]) 
  	if @post
  		@post.destroy
  	else
  		flash[:errors] = "Post doesn't exist"
  	end
  	render :index
  end
  protected 
  def post_params
  	params.require(:post).permit(:content)
  end
end

