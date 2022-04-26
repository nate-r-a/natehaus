class Team < ApplicationRecord
  has_many :game_scores
  has_many :games, through: :game_scores

  def wins
    game_scores.where(win: true).count
  end

  def losses
    game_scores.where(win: false).count
  end

  def points_for
    game_scores.sum(:score)
  end

  def points_against
    GameScore.where(game_id: game_ids).where.not(team: self).sum(:score)
  end
  
  def points_diff
    val = points_for - points_against
    sprintf("%+d", val)
  end

  def last(n)
    wins = game_scores.last(3).count(&:win)
    losses = n - wins
    "#{wins}-#{losses}"
  end

  def streak
    count = 0
    result = nil
    previous_result = nil
    game_scores.all.reverse.each do |gs|
      result = gs.win
      break if result != previous_result && !previous_result.nil?
      count += 1
      previous_result = result
    end
    "#{count}#{result ? 'W' : 'L'}"
  end
  
end
