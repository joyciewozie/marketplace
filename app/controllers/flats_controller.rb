class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    authorize @flat
    @markers = [{
      lat: @flat.latitude,
      lng: @flat.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {flat: @flat})
    }]
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    authorize @flat
    flat = Flat.new(flat_params)
    flat.owner = current_user
    flat.save!
    redirect_to flat_path(flat)
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.update(flat_params)
    redirect_to flat_path(@flat.id)
  end

  private

  def flat_params
    params.require(:flat).permit(:description, :price_per_night, :owner_id, :name, :location, :photo)
  end
end
