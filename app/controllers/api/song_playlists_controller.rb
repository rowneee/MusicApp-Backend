class  Api::SongPlaylistsController < ApplicationController

  def index
    songplaylists = SongPlaylist.all
    render json: songplaylists
  end

  def show
    songplaylist = SongPlaylist.find(params[:id])
    render json: songplaylist
  end

  def create
    songplaylist = SongPlaylist.create(spparams)
    render json: songplaylist
  end

  private

  def spparams
    params.require(:song_playlist).permit(:playlist_id, :song_id)
  end


end
