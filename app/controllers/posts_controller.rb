class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

  def new
  	@post = Post.new
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def show
    @comment = Comment.new
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(post_params)
  	@post.save
  	redirect_to @post
  end

  def update
    @post =  Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to posts_path
  end

  private
   def post_params
   	params.require(:post).permit(:title, :description, :category_id)	
   end

end
