class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :completed
      t.integer :handler_id
      t.integer :current_turn
      t.boolean :public, default: true

      t.timestamps
    end
  end
end
