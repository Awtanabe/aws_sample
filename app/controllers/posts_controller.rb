class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create

    @post = Post.new(post_params)
    if @post.save!
      # ProjectMailer.post(current_user).deliver_later
      redirect_to "/"
    else
      flash[:success] = "保存失敗"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path    
  end

  private

  def post_params
   params.require(:post).permit(:title, :body, post_categories_attributes: [:id, :category_id, :_destroy]).merge(user_id: current_user.id)
  end
end
