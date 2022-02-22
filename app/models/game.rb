class Game < ApplicationRecord
  belongs_to :user
  GENRE = %w[strategy shooter multiplayer simulation sports puzzlers adventure survival horror]
  validates :name, :genre, :description, :price, presence: true
  validates :genre, inclusion: { in: GENRE }
end
