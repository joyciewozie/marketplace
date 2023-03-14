class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
