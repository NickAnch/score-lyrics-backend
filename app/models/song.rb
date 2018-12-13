class Song < ApplicationRecord
  validates :singer, presence: true
  validates :name, presence: true
  validates :lyrics, presence: true
end
