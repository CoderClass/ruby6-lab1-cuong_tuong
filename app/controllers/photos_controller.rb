class PhotosController < ApplicationController
  def index
  	@photos = Photo.page(params[:page]).per(5).order('created_at ASC')
  end

  def edit
  	@photo = Photo.find(params[:id])
  end

  def update
  	@photo = Photo.find(params[:id])

  	if @photo.update!(photo_params)
  		redirect_to photos_path
  	else
  		render 'edit'
  	end
  end

  private
  def photo_params
  	params.require(:photo).permit(:image)
  end
end
