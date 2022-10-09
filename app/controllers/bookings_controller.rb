class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save
      redirect_to root_path(@booking)
  end

  def index
    @booking = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :message)
  end

end
