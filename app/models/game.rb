class Game < ApplicationRecord
  belongs_to :user
  monetize :price_cents
  GENRE = %w[strategy shooter multiplayer simulation sports puzzlers adventure survival horror]
  has_one_attached :photo
  validates :name, :genre, :description, :price_cents, presence: true
  validates :genre, inclusion: { in: GENRE }

  # pg_search
  include PgSearch::Model
  pg_search_scope :search_by_name_and_genre,
    against: [ :name, :genre ],
    using: {
    tsearch: { prefix: true }
    }

end
