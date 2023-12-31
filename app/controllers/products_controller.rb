
class Admin::ProductsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD'], except: :index
  
end


class ProductsController < ApplicationController
  
  def index
    @products = Product.all.order(created_at: :desc)
  end
  
  def show
    @product = Product.find params[:id]
  end
  
end