class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking = Booking.find(@user.id)
    @flat = Flat.find(@booking.id)
  end
end
