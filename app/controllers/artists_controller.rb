class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @background = 'back-artists'

    if Artist.find_by(name: 'Timmy Trumpet')
    	@bgmodal = 'back-timmy-trumpet'
    elsif Artist.find_by(name: 'Tiesto')
    	@bgmodal = 'back-tiesto'
    elsif Artist.find_by(name: 'Dash Berlin')
    	@bgmodal = 'back-dash-berlin'
    elsif Artist.find_by(name: 'Afrojack')
    	@bgmodal = 'back-frojack'
    elsif Artist.find_by(name: 'Hardwell')
    	@bgmodal = 'back-hardwell'
    elsif Artist.find_by(name: 'Deadmau5')
    	@bgmodal = 'back-deadmau5'    	    	    	
    end
  end
end
