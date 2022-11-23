class BookingsController < ApplicationController
  before_action :set_hitman, only: %i[index new create]

  def show_bookings
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hitman = @hitman
    @booking.user = current_user
    if @booking.save
      redirect_to hitmen_path(@hitman)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:hitman_id])
  end

  def booking_params
    params.require(:booking).permit(:name)
  end
end
