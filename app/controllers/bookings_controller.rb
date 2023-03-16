class BookingsController < ApplicationController
  before_action :set_flat, only: %i[create]

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat

    @booking.customer = current_user

    if @booking.save
      redirect_to user_path(current_user)
    else
      render "flats/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :flat_id)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
