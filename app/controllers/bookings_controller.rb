class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.save
    redirect_to flat_path(@flat)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :flat_id)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
