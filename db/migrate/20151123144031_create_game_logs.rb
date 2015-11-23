class CreateGameLogs < ActiveRecord::Migration
  def change
    create_table :game_logs do |t|
      t.references :game, index: true
      t.references :player, index: true
      t.integer :period, default: 1
      t.integer :event, defaul: 0
      t.integer :count, defaul: 1

      t.timestamps null: false
    end
    add_foreign_key :game_logs, :games
    add_foreign_key :game_logs, :players
  end
end
