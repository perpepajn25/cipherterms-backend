class Chat < ApplicationRecord

  belongs_to :game
  enum topic: [:blue_agents, :red_agents, :group]
  
end
