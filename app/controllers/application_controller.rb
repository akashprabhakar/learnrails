class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create!(params[:comment])
  	
  end

  
end
