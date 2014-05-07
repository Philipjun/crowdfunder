class ProjectsController < ApplicationController
  skip_before_filter :require_login, only: :index

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
    @pledge = Pledge.new
  end

  def destroy

  end

  def edit

  end


private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :pledge_total, :start_date, :end_date, breakpoints_attributes: [:id, :pledge_title, :info, :pledge, :_destroy])
  end


end
