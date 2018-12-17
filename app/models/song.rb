class Song < ApplicationRecord
  validates :singer, :name, length: { minimum: 2 }
  validates :lyrics, :genre, presence: true
end
