class AddPriceToGames < ActiveRecord::Migration[6.1]
  def change
    add_monetize :games, :price
    # , currency: { present: false }
  end
end
