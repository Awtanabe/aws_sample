class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    @category.save!
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end

  private
  
  def category_params
    params.require(:category).permit(:name, :parent_id).merge(user_id: current_user.id)
  end
end
