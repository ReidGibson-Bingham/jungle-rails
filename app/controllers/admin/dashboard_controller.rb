class Admin::DashboardController < ApplicationController
  # basic authentication v
  http_basic_authenticate_with name: "Jungle", password: "book", except: :index

  def show
    @count = Product.count()
    @categories = Category.count(:name)
  end

end
