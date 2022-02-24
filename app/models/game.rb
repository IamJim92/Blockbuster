class Game < ApplicationRecord
  belongs_to :user
  GENRE = %w[strategy shooter multiplayer simulation sports puzzlers adventure survival horror]
  has_one_attached :photo
  validates :name, :genre, :description, :price, presence: true
  validates :genre, inclusion: { in: GENRE }

  # pg_search
  include PgSearch::Model
  pg_search_scope :search_by_name_and_genre,
    against: [ :name, :genre ],
    using: {
    tsearch: { prefix: true }
    }

end
