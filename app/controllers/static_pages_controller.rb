class StaticPagesController < ApplicationController

  def index
    f = Flickr.new
    @list = []

    unless params[:flickr_id].nil? || params[:flickr_id] == ''
      begin
        @list = f.people.getPhotos(user_id: params[:flickr_id])
      rescue
        flash[:notice] = "Not a valid User ID"
      end
    end
  end
end
