class PagesController < ApplicationController
  def home
    @parks = Park.all
      # The `geocoded` scope filters only flats with coordinates
      @markers = @parks.geocoded.map do |park|
        {
          lat: park.latitude,
          lng: park.longitude,
          info_window_html: render_to_string(partial: "parks/info_window", locals: {park: park})
        }
      end
  end
end
