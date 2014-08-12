class PicturesController < ApplicationController
	def create 
		@house=House.find(params[:house_id])
		@picture=@house.pictures.create(picture_params)
	end
	private
	def picture_params
		params.require(:picture).permit(:photo)
	end
end




