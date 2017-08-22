class ArtworksController < ApplicationController
  def index
		@artworks = Artwork.all
		render json: @artworks
	end

	def create
		@artwork = Artwork.new(artwork_params)
		if @artwork.save
			render json: @artwork
		else
			render json: @artwork.errors.full_messages, status: :unprocessable_entity
		end
	end

	def show
		@artwork = Artwork.find(params[:id])
		render json: @user
	end

	def destroy
		@artwork = Artwork.find(params[:id])
		if @artwork.destroy
			render json: @artwork
		else
			render plain: 'Artwork does not exist'
		end
  end

	def update
		@artwork = Artwork.find(params[:id])
		if @artwork.update(artwork_params)
		  render json: @artwork
		else
		  render json: @artwork.errors.full_messages, status: :unprocessable_entity
		end
	end

	def artwork_params
		params.require(:artwork).permit(:artist_id, :title, :image_url)
	end
end
