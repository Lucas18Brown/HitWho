class BookingsController < ApplicationController
  before_action :set_hitman, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hitmen = @hitman
    @booking.save

    redirect_to hitmen_path(@hitman)
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name)
  end
end
