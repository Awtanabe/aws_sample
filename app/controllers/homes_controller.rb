class HomesController < ApplicationController
  def index
    @post = Post.new
    @post.post_categories.build
    @posts = Post.all.where(user_id: current_user.id)
    @parent_categories = Category.where(user_id: current_user.id, parent_id: nil)
  end
end
