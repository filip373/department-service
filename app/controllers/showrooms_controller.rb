class ShowroomsController < ApplicationController

  def index
    render json: Showroom.all
  end

  def show
    render json: Showroom.find(params[:id])
  end

end
