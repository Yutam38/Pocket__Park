class FavouritesController < ApplicationController

  def index
    @favourites = current_user.favourites.includes(:park)
  end
end
