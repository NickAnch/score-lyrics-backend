class Song < ApplicationRecord
  validates :singer, :name, length: { minimum: 2 }
  validates :lyrics, :genre_id, presence: true

  has_many :ratings, dependent: :destroy
  belongs_to :genre
  belongs_to :author, class_name: 'User',
                      foreign_key: :author_id,
                      inverse_of: :songs
  before_validation :add_author

  def add_author
    self.author = User.current unless author
  end
end
