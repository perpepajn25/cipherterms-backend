class Player < ApplicationRecord

  belongs_to :game
  belongs_to :user
  enum cover: [:blue_field_agent, :red_field_agent, :blue_spymaster, :red_spymaster]

end
