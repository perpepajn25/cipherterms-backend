class Tile < ApplicationRecord

  belongs_to :game
  belongs_to :term
  enum secret_identity: [:blue_agent, :red_agent, :innocent_bystander, :assassin]

end
