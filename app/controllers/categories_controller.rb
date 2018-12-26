class CategoriesController < ApplicationController
  def admin_index
    @categories = Category.all
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy

    redirect_to categories_admin_index_path
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    @category.update category_params

    redirect_to categories_admin_index_path
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @category.save!

    redirect_to categories_admin_index_path
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
