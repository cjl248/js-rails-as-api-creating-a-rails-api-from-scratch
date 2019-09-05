class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: sightings, include: [:bird, :location], except: [:created_at, :updated_at]
  end

end
