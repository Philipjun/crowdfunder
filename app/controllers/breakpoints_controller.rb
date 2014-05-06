class BreakpointsController < ApplicationController
  before_filter :load_project => :only => [:index, :new, :create]

  def index
    @breakpoints = Breakpoint.all
  end

  def new
    @breakpoint = Breakpoint.new
  end


  def create
    @breakpoint = @project.breakpoint.build(breakpoint_params)
    if @breakpoint.save
      redirect_to @breakpoint
    else
      render 'new'
    end
  end

private
  def breakpoint_params
    params.require(:breakpoint).permit(:pledge_title, :info, :pledge)
  end

  def load_project
    @project= Project.find(params[:project_id])
  end

end