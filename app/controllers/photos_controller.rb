class PhotosController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def index
  	@photos = current_user.photos
  end

  def new
  	1.times { current_user.photos.build }
  end

  def update
  	saved = current_user.update_attributes(user_params)
    @photo = current_user.photos.last
    respond_with @photo
  end
  
  def destroy
    photo = Photo.find params[:id]
    photo.destroy
    respond_with photo
  end

  def user_params
    params.require(:user).permit(:photos_attributes => [:image])
  end

end
