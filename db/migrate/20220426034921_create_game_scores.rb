class CreateGameScores < ActiveRecord::Migration[6.0]
  def change
    create_table :game_scores do |t|
      t.references :team, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :score
      t.boolean :win

      t.timestamps
    end
  end
end
