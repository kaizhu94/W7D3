FactoryBot.define do
  factory :goal do
    name { Faker::Movies::StarWars.character } # a block will execute each time a user is created with the factory
    detail { "Nothing here" }
    status {"true"}
    user_id {Faker::Number.number(digits: 3)}
  end
end
