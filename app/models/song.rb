class Song < ApplicationRecord
  has_many :users, through: :favorites
end
