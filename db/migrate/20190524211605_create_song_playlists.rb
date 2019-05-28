class CreateSongPlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :song_playlists do |t|
      t.integer :playlist_id
      t.integer :song_id
      t.timestamps
    end
  end
end
