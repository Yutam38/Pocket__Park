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
    redirect_to park_path(@booking.timeslot.park_id, date: @booking.timeslot.start_time.to_date)
  end

  def destroy
    @booking = Booking.find(params[:id])

  if @booking.user_id == current_user.id
    @booking.destroy
    flash[:notice] = "Booking canceled successfully."
  else
    flash[:alert] = "You are not authorized to cancel this booking."
  end

  redirect_to bookings_path
  end
end
