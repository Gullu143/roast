class CategoriesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  def index
  	@category = Category.all
  end

  def show
  end

  def edit
  end

  def new
    @user = current_user
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	@category.save
  	redirect_to new_post_path
  end

  private
  	def category_params
  		params.require(:category).permit(:name, :user_id);
  	end
end
