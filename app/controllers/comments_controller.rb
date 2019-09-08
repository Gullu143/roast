class CommentsController < ApplicationController
  def index
  	@comment = Comment.all
  end

  def new
  	@comment = Comment.new
  end


  def create
  	@comment = Comment.new(comment_params)
  	@comment.save
    @post = @comment.post
  	redirect_to @post
  end

  private	
	def comment_params
		params.require(:comment).permit(:name, :body, :post_id)
	end

end
