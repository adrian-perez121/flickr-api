class StaticPagesController < ApplicationController

  def index
    f = Flickr.new
    @list = f.people.getPhotos(user_id: '201187303@N04')
  end
end
