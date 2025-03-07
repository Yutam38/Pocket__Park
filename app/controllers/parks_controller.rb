class ParksController < ApplicationController
  before_action :set_park, only: %i[show]

  def index
    @parks = Park.all
    @favourites = current_user.favourites

      # The `geocoded` scope filters only flats with coordinates
    @markers = @parks.geocoded.map do |park|
        {
          lat: park.latitude,
          lng: park.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {park: park})
      }
          end
  end

  def show
    @timeslots = @park.timeslots.order(:start_time)
    @markers = [{
      lat: @park.latitude,
      lng: @park.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { park: @park })
    }]
    selected_date = params[:date]
    @timeslots = @park.timeslots.where("DATE(start_time AT TIME ZONE 'UTC') = ?", selected_date).order(:start_time)
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
