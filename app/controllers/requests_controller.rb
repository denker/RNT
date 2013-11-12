include RequestsHelper

class RequestsController < ApplicationController
  before_action :load
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def open_popup
    @fields = make_field_set(params)
  end

  def index
  end

  def edit
  end

  def create
    @request = Request.new(request_params)    
    if @request.save
      flash[:notice] = "Successfully created request."
      @requests = Request.all
    end
  end

  def update
    if @request.update(request_params)
      flash[:notice] = "Request was successfully updated." 
      @requests = Request.all
    end
  end

  def destroy
    @request.destroy    
    flash[:notice] = "Request destroyed."
    @requests = Request.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :phone, :email, :comment)
    end

    def load
      @requests = Request.all
      @request = Request.new
    end
  end