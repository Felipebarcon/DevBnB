class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def projects_params
    params.require(project).permit(:name, :description, :price, :duration)
  end
end
