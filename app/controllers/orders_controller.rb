class OrdersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @order = Order.new
  end

  def my_orders
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @project = Project.find(params[:project_id])
    @order.project = @project
    @order.user = current_user
    if @order.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def update

  end

  private

  def order_params
    params.require(:order).permit(:status, :comment, :starts_at, :user_id, :project_id)
  end
end
