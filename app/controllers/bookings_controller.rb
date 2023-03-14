class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :flat_id)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
