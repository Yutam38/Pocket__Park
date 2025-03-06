class FavouritesController < ApplicationController

  def index
    @favourites = current_user.favourites.includes(:park)
  end

  def create
    @park = Park.find(params[:park_id])
    @favourites = Favourites.new(user: current_user, park: @park)
    if @favourites.save
      redirec_to @park, notice: "Added to favourites"
    else
      render @park, alert: "Something went wrong"
  end
end
