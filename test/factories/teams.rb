FactoryBot.define do
  factory :team do
    name { "#{Faker::Address.city} #{Faker::Creature::Animal.name.capitalize.pluralize}" }
    abbreviation { name.split.map(&:first).join.upcase }
  end
end
