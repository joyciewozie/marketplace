class FlatsController < ApplicationController
  def index
    @flats = Flat.all
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
    params.require(:flat).permit(:description, :price_per_night, :owner_id, :name, :location)
  end
end
