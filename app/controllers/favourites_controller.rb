class FavouritesController < ApplicationController

  def index
    @favourites = current_user.favourites.includes(:park)
  end

  def create
    @park = Park.find(params[:park_id])
    @favourite = Favourite.new(user: current_user, park: @park)
    if @favourite.save
      redirect_to parks_path, notice: "Added to favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    if params[:redirection] == "parks"
      redirect_to parks_path, notice: "Removed"
    else
      redirect_to favourites_path
    end
  end
end


# favourite = current_user.favourites.find_by(id: params[:id])
