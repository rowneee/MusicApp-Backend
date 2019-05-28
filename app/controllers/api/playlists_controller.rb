class Api::PlaylistsController < ApplicationController

  def index
    playlists = Playlist.all
    render json: playlists
  end

  def show
    playlist = Playlist.find(params[:id])
    render json: playlist
  end

  def create
    playlist = Playlist.create(playlistparams)
    render json: playlist
  end

  # def update
  #   playlist = Playlist.find(params[:id])
  #   render json: playlist
  # end

  # def destroy
  #   playlist = Playlist.find(params[:id])
  #   playlist.destroy
  #   render json: playlists
  # end

   private

   def playlistparams
    params.require(:playlist).permit(:user_id, :name)
  end
end
