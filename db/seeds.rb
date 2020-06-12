Cats.destroy_all
Dogs.destroy_all

class Seed

  def self.begin
      Seed.generate_cats
      Seed.generate_dogs
  end

  def self.generate_cats
    15.times do |i|
      cat = Cat.create!(
        name: Faker::Creature::Cat.name,
        age: rand(1..9),
        breed: Faker::Creature::Cat.breed
      )
    end
  end

  def self.generate_dogs
    15.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        age: rand(1..15),
        breed: Faker::Creature::Dog.breed
      )
    end
  end

end

Seed.begin
p "SUCCESSFULLY SEEDED DB WITH #{Cat.count} CATS AND #{Dogs.count} DOGS"