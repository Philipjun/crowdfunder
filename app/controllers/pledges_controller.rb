class PledgesController < ApplicationController
	def new
	end

	def create
		@pledge = Pledge.new(pledge_params)
		@pledge.save
		redirect_to projects_path
	end

  private
  def pledge_params
  	params.require(:pledge).permit(:project_id, :breakpoint_id)
  end
end
