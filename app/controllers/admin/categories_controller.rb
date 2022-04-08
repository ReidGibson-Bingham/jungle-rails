class Admin::CategoriesController < ApplicationController
  # basic authentication v
  http_basic_authenticate_with name: "Jungle", password: "book"

  def index
    @categories = Category.order(name: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def category_params
    params.require(:category).permit(
      :name,
    )
  end

end
