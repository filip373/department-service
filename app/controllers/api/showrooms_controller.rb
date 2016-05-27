class API::ShowroomsController < ApplicationController

  def index
    @showrooms = Showroom.where(deleted: false)
  end

  def show
    @showroom = Showroom.find(params[:id])
  end

end
