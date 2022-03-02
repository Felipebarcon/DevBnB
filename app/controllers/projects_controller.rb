class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:commit]
      @projects = Project.where("name LIKE '%#{params[:query]}%'")
      if @projects == []
        @page_h1 = "No project found for #{params[:query]}."
      else
        @page_h1 = "Here's your search for #{params[:query]}."
      end
    else
      @projects = Project.all
      @page_h1 =  'Projects<i class="fas fa-stream"></i>'
    end
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
