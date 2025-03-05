class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @bookings = booking.find(params[:id])
  end

  def create
    booking = bookings.new
    booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end
end
