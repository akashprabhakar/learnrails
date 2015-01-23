class CommentsController < ApplicationController
	def create
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create(post_params)
                redirect_to @post
        end

   
   		 def post_params
     		 params.require(:comment).permit(:body)
   		 end
	
end
