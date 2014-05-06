class BreakpointController < ApplicationController

   def index
    @breakpoints = Breakpoint.all
  end

  def new
    @breakpoint = Breakpoint.new
  end


  def create
    @breakpoint = Breakpoint.new(breakpoint_params)
    if @breakpoint.save
      redirect_to @breakpoint
    else
      render 'new'
    end
  end

private
  def breakpoint_params
    params.require(:breakpoint).permit(:pledge_name, :info, :pledge)
  end


end