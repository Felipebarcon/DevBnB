class OrdersController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @order = Order.new
  end

  def my_orders
    @user = current_user
    @orders = @user.orders.order('created_at DESC')
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @project = Project.find(params[:project_id])
    @order.project = @project
    @order.user = current_user
    @order.status = "Not yet accepted"
    if @order.save
      redirect_to my_orders_path
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
    @project = @order.project
  end

  def update
    @order = Order.find(params[:id])
    @project = @order.project
    @order.update(order_params)
    redirect_to my_orders_path(@order)
  end

  private

  def order_params
    params.require(:order).permit(:status, :comment, :starts_at, :user_id, :project_id)
  end
end
