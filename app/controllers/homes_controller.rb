class HomesController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.where(user_id: current_user.id)
  end
end
