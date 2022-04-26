FactoryBot.define do
  factory :game_score do
    team
    game
    score { rand(1..15) }
    win { [true, false].sample }
    home { [true, false].sample }
  end
end
