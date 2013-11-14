class JobsController < ApplicationController

	before_action :load
	before_action :set_t, only: [:show, :edit, :update, :destroy]

	def index		
	end

	def create
		@job = Job.new(request_params)    
		if @job.save			
			@jobs = Job.all
		end
	end

	def destroy
		@job.destroy      	
		@jobs = Job.all
	end

	private

	def load
		@jobs = Job.all
		@job = Job.new
	end

	def set_t
		@job = Job.find(params[:id])
	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
    	params.require(:job).permit(:source, :output)
    end

end
