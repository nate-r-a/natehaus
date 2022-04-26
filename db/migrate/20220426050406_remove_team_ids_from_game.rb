class RemoveTeamIdsFromGame < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :home_team_id
    remove_column :games, :away_team_id
  end
end
