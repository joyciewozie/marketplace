class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    authorize @flat
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

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat.id)
  end

  private

  def flat_params
    params.require(:flat).permit(:description, :price_per_night, :owner_id, :name, :location, :photo)
  end
end
