class PhotosController < ApplicationController
  def index 
    @photos = Photo.all 
    render :index
  end 

  def create
    @photo = Photo.create(
      name: params[:name], 
      height: params[:height], 
      width: params[:width], 
    )
    render :show
  end 

  def show
    @photo = Photo.find_by(id:params[:id])
    render :show
  end 

  def update 
    @photo = Photo.find_by(id:params[:id])
    @photo.update(
      name: params[:name] || @photo.name,
      height: params[:height] || @photo.height,
      width: params[:width] || @photo.width,
    )
    render :show
  end 

end
