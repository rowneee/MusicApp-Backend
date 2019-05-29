# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# res = RestClient.get('http://ws.audioscrobbler.com/2.0/?method=  library.getArtists   &user=test&api_key=ab78988c26f533e4eac6230159ca1f3a&limit=50&format=json')
# data = JSON.parse(res)
#
# data.songs.each {|song| Song.create(name: song.name, artist_name: song.artist)}

song1 = Song.create(name: "Sober", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song2 = Song.create(name: "Pop Thieves", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song3 = Song.create(name: "Retro (Rough)", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song4 = Song.create(name: "The Palisades", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song5 = Song.create(name: "Poke", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song6 = Song.create(name: "Late Night In Kauai", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")
song7 = Song.create(name: "V.3005", artist: "Childish Gambino", album: "Kauai", img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/STN_MTN_KAUAI_Childish_Gambino.png/220px-STN_MTN_KAUAI_Childish_Gambino.png")


user1 = User.create(name: "Roni", password_digest: 12345)
user2 = User.create(name: "Alex", password_digest: 12345)
user3 = User.create(name: "Vera", password_digest: 12345)
user4 = User.create(name: "Chris", password_digest: 12345)
user5 = User.create(name: "Jeff", password_digest: 12345)

playlist1 = Playlist.create(user_id: 1, name: "Summer")
playlist2 = Playlist.create(user_id: 1, name: "Winter")
playlist3 = Playlist.create(user_id: 1, name: "Spring")


sp1 = SongPlaylist.create(playlist_id: playlist1.id, song_id: song1.id)
sp2 = SongPlaylist.create(playlist_id: playlist2.id, song_id: song2.id)
sp3 = SongPlaylist.create(playlist_id: playlist3.id, song_id: song3.id)
sp4 = SongPlaylist.create(playlist_id: playlist3.id, song_id: song4.id)
