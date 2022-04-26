class AddHomeToGameScores < ActiveRecord::Migration[6.0]
  def change
    add_column :game_scores, :home, :boolean
  end
end
