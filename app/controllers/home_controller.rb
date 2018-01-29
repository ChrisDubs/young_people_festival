class HomeController < ApplicationController
  def index
    @background = 'back-home'
  end

  def about_us
    @background = 'back-about-us'
  end

  def contact_us
    @background = 'back-contact-us'
  end
end
