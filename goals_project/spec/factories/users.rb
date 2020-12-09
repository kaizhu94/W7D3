FactoryBot.define do
  factory :user do
    username { Faker::Movies::StarWars.character } # a block will execute each time a user is created with the factory
    password { "lightesaber" }
  end
end
