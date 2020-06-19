class Dog < ApplicationRecord
  include PgSearch::Model

  validates :name, :age, :breed, :is_available, presence: true

  paginates_per 5 

  scope :breed, -> (breed_parameter) { where("breed like ?", "%#{breed_parameter}%")}

  pg_search_scope :search_dogs, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end