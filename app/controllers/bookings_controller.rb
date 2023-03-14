class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create]

  private

  def set_user
  @user = User.find(params[:user_id])
 end

end
