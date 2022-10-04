class BookingsController < ApplicationController
  @booking = Booking.new({
    name:params[:name],
    email:params[:email],
    message:params[:message],
  })
  booking.save
  redirect_to root_path
end
