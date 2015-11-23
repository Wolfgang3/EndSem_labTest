class LocationmapController < ApplicationController
  def show
  	@locations = Addonmap.all
  end
end
