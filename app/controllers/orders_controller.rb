class OrdersController < ApplicationController

  def new
    @orders = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.project = current_project
    @order.save
    redirect_to projects_path
  end

  def update

  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end
