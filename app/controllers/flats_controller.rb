class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    redirect_to root_path
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    Flat.create
    redirect_to flat_path([:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:description, :price_per_night, :owner_id, :name, :location, :photo)
  end
end
