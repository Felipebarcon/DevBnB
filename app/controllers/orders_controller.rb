class OrdersController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @order = Order.new
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
    params.require(:order).permit(:status, :project_id, :user_id)
  end
end
