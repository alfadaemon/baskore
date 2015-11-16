class AddRoundRefToGames < ActiveRecord::Migration
  def change
    add_reference :games, :round, index: true
    add_foreign_key :games, :rounds
  end
end
