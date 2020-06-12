FactoryBot.define do
  factory(:pet) do
    breed {Faker::Creature::Dog.breed}
    age {Faker::Number.between(from: 1, to: 10)}
    gender {Faker::Creature::Dog.gender} 
    desc {Faker::Quotes::Shakespeare.as_you_like_it_quote}
    name {Faker::Creature::Dog.name}
    species {"dog"}
  end
end