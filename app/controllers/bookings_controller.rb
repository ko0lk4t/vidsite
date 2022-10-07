class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :message)
  end

end
