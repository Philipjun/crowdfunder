class PledgesController < ApplicationController
	def new
	end

	def create
		@pledge = Pledge.new(pledge_params)
		
    respond_to do |format|
			if @pledge.save
        format.html { redirect_to project_path(@project.id), notice: 'Review added.' }
        format.js {} 
      else
        format.html { render 'products/show', alert: 'There was an error.'  }
        format.js {} 
      end
    end

	end

  private
  def pledge_params
  	params.require(:pledge).permit(:project_id, :breakpoint_id)
  end
end
