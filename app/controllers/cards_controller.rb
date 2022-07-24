class CardsController < ApplicationController
  def show
    @orderitems = current_order.orderitems
    @order = current_order
  end
end
