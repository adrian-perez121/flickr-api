class StaticPagesController < ApplicationController

  def index
    f = Flickr.new
    @list = []

    unless params[:flickr_id].nil? || params[:flickr_id] == ''
      @list = f.people.getPhotos(user_id: params[:flickr_id])
    end
  end
end
