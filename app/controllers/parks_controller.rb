class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
    @timeslots = @park.timeslots
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

  # private

  # def park_params
  #   params.require(:park).permit(:name, :description, :longitude, :latitude)
  # end
end
