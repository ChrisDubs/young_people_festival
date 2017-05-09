class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @background = 'back-artists'
  end
end
