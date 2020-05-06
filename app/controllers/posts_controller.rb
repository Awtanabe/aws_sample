class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    post = Post.new(post_params)
    if post.save!
      redirect_to "/"
    else
      flash[:success] = "保存失敗"
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def post_params
   params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end
end
