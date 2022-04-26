class Team < ApplicationRecord
  has_many :game_scores
  has_many :games, through: :game_scores
end
