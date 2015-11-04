class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :position
      t.references :tournament, index: true

      t.timestamps null: false
    end
    add_foreign_key :rounds, :tournaments
  end
end
