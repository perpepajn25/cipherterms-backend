class CreateTiles < ActiveRecord::Migration[5.1]
  def change
    create_table :tiles do |t|
      t.integer :game_id
      t.integer :term_id
      t.integer :position
      t.integer :secret_identity
      t.boolean :revealed?, default: false

      t.timestamps
    end
  end
end
