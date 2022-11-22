class BookingsController < ApplicationController

  before_action :set_booking, only: [:new, :show, :edit, :update]


  def index
    @bookings = Booking.where(user: current_user)
  end

end
