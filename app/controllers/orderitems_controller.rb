class OrderitemsController < ApplicationController
  def index
		@order = Order.all.order("created_at DESC")
	end
  def create
    @order = current_order
    @orderitem = @order.orderitems.new(order_params)
    @order.save
    session[:order_id] = @order.id
  end
  private
  def order_params
    params.require(:orderitem).permit(:product_id, :quantity,:order_id,:quantity)
  end
end
