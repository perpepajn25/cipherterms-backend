class Game < ApplicationRecord

  belongs_to :handler, class_name: 'User'
  has_many :chats
  has_many :players
  has_many :clues
  has_many :tiles
  enum current_turn: [:blue_clue, :red_clue, :blue_selection, :red_selection]
  enum completed: [:pending, :started, :completed]


  def begin
    
  end

end
