class UserController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
  end
end
