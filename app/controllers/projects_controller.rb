class ProjectsController < ApplicationController

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
