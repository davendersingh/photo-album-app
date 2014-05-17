class PublicDataController < ApplicationController
	def index
	  @photos = Photo.all
	end
end
