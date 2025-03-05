class ParksController < ApplicationController
  before_action :set_park, only: %i[show]
  def index
    @parks = Park.all
  end

  def show
    @timeslots = @park.timeslots.order(:start_time)
  end

  # def new
  #   @park = Park.new
  # end

  # def create
  #   @park = Park.new(park_params)
  #   if @park.save
  #     redirect_to park_path(@park)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  private

  def set_park
    @park = Park.find(params[:id])
  end

  # def park_params
  #   params.require(:park).permit(:name, :description, :longitude, :latitude)
  # end
end
