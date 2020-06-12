class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pets
  end

  def generate_pets
    50.times do |i|
      pet = Pet.create!(
        breed: Faker::Creature::Dog.breed,
        age: Faker::Number.between(from: 1, to: 10),
        gender: Faker::Creature::Dog.gender, 
        desc: Faker::Quotes::Shakespeare.as_you_like_it_quote, 
        name: Faker::Creature::Dog.name,
        species: "dog"
      )
    end
     50.times do |i|
      pet = Pet.create!(
        breed: Faker::Creature::Cat.breed,
        age: Faker::Number.between(from: 1, to: 10),
        gender: Faker::Creature::Dog.gender, 
        desc: Faker::Quotes::Shakespeare.as_you_like_it_quote, 
        name: Faker::Creature::Cat.name,
        species: "cat"
      )
    end
    p "Created #{Pet.count} pets"
  end
end


Seed.begin