# Cats.destroy_all
# Dogs.destroy_all

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
      )
    end
  end

  def self.generate_dogs
    15.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        age: rand(1..15),
      )
    end
  end

end

Seed.begin
p "SUCCESSFULLY SEEDED DB WITH #{Cat.count} CATS AND #{Dog.count} DOGS"