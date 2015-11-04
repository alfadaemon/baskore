class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.references :league, index: true

      t.timestamps null: false
    end
    add_foreign_key :tournaments, :leagues
  end
end
