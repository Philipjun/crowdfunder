class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end


  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
    @breakpoints = Breakpoint.all
    @breakpoint = Breakpoint.new
  end

  def destroy

  end

  def edit

  end


private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :pledge_total, breakpoints_attributes: [:id, :pledge_title, :info, :pledge, :_destroy])
  end


end
