class Admin::DashboardController < ApplicationController
  # basic authentication v
  http_basic_authenticate_with name: "Jungle", password: "book", except: :index

  # ^ need help with a mentor for this authentication

  def show
    @count = Product.count()
    @categories = Category.count(:name)
  end

end
