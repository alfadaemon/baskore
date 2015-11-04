class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.references :home, index: true
      t.references :visit, index: true
      t.date :game_date
      t.integer :home_score, default: 0
      t.integer :visit_score, default: 0

      t.timestamps null: false
    end
    add_foreign_key :games, :homes
    add_foreign_key :games, :visits
  end
end
