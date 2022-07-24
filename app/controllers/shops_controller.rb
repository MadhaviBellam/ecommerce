class ShopsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
    @orderitem = current_order.orderitems.new
    @products = Product.paginate(page: params[:page], per_page: 3)

  end

  def show
    @product = Product.find(params[:id])
  end
end
