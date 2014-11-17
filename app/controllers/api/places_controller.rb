class Api::PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @place
  end

  def create
    @place = Place.new(params.require(:place).permit(:name, :city))
    @place.save
    render json: @place
  end

  def update
     @place = Place.find(params[:id])
     @place.update(params.require(:place).permit(:name, :city))
     render json: @place
  end
end
