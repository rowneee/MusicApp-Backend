class CreateSongPlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :song_playlists do |t|
      t.string :playlist_id
      t.string :song_id
      t.timestamps
    end
  end
end
