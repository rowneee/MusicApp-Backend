class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs
  end
  #
  def show
    song = Song.find(params[:id])
    render json: song
  end

  # def new
  #   game = Game.new
  # end
  #
  # def create
  #   game = Game.create(gameparams)
  #   # create tiles
  #   num_rows = gameparams["level"] + 1
  #   tiles = num_rows ^ 2
  #     # each with index for tile int
  #     # tiles times create new tile tile.game+_id = game id
  #   render json: game
  # end
  #
  #  private
  #
  #  def songparams
  #   params.require(:song).permit(:name, :artist, :album, :img_url)
  # end

end
