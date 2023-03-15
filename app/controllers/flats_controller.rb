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
    flat = Flat.new(flat_params)
    flat.owner = current_user
    flat.save!
    redirect_to flat_path(flat)
  end

  private

  def flat_params
    params.require(:flat).permit(:description, :price_per_night, :owner_id, :name, :location, :photo)
  end
end
