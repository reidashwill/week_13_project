Cats.destroy_all
Dogs.destroy_all
Seed.begin
p "SUCCESSFULLY SEEDED DB WITH #{Cats.count} CATS AND #{Dogs.count} DOGS"
class Seed

  def self.begin
      Seed.generate_cats
      Seed.generate_dogs
  end

  def self.generate_cats
    15.times do |i|
      cat = Cat.create!(
        name: Faker::Creature::Cat.name
        age: rand(1..9)
        is_available: true
      )
    end
  end

  def self.generate_dogs
    15.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name
        age: rand(1..15)
        is_available: true
      )
    end
  end

end