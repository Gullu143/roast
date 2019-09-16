class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
  	@post = Post.all
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def edit
    @user = current_user
  	@post = Post.find(params[:id])
  end

  def show
    @comment = Comment.new
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  	 redirect_to @post, notice: 'successfully created post.'
    else
      redirect_to new_post_path, notice: 'try again'
    end
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
   	params.require(:post).permit(:title, :description, :category_id, :image, :user_id)	
   end

end
