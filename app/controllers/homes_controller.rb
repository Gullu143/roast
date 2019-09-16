class HomesController < ApplicationController
  def home
  	@post = Post.all.limit(6)
  end

  def about
  end
end
