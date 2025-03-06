class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @bookings = booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create!(timeslot_id: params[:timeslot_id], user_id: current_user.id)
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end
end
