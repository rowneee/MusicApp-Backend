class User < ApplicationRecord
  has_many :songs, through: :favorites

end
