class BookingsController < ApplicationController
  before_action :set_hitman, only: %i[index new create]
  before_action :set_booking, only: %i[destroy]

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
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy

    redirect_to user_path(current_user), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_hitman
    @hitman = Hitman.find(params[:hitman_id])
  end

  def booking_params
    params.require(:booking).permit(:name, :photo)
  end
end
