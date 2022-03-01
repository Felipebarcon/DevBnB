class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @marker = [{
      lat: @project.user.latitude,
      lng: @project.user.longitude
    }]
  end


  def new
    @project = Project.new
  end

  def create
    @project = Project.new(projects_params)
    @project.user = current_user
    @project.save
    redirect_to projects_path
  end

  private

  def projects_params
    params.require(:project).permit(:name, :description, :price, :duration, :photo, :details)
  end
end
