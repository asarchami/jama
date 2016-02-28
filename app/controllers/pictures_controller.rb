class PicturesController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to new_photo_path
  end
end
