class HomeController < ApplicationController
  def index
    @performer = Performer.new
  end
  def get_image
    @performer = Performer.find(params[:order][:performer_id])
  end
end