class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :cover

      t.timestamps
    end
  end
end
