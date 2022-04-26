FactoryBot.define do
  factory :game do
    venue { Faker::Lorem.word }
  end

  after(:create) do |game|
    create(:game_score, game: game)
  end
end
