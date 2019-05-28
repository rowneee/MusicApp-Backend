class Api::SongsController < ApplicationController

  def index
    songs = Song.all
    render json: songs
  end

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def new
    song = Song.new
  end
  #
  def create
    song = Song.create(songparams)
    render json: song
  end

  # def delete
  # end

   private

   def songparams
    params.require(:song).permit(:name, :artist, :album, :img_url)
    byebug
  end

end
