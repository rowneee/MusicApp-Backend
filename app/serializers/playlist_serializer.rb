class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :songs
  belongs_to :user
  has_many :songs
end
