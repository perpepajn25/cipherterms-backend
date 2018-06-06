class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :game_id
      t.integer :topic
      
      t.timestamps
    end
  end
end
