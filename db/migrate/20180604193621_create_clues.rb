class CreateClues < ActiveRecord::Migration[5.1]
  def change
    create_table :clues do |t|
      t.string :word
      t.integer :count
      t.integer :game_id
      t.integer :user_id
      t.boolean :current_clue?, default: true

      t.timestamps
    end
  end
end
