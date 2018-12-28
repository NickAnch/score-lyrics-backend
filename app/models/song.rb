class Song < ApplicationRecord
  validates :singer, :name, length: { minimum: 2 }
  validates :lyrics, :genre_id, presence: true

  has_many :ratings, dependent: :destroy
  belongs_to :genre
  belongs_to :user
end
