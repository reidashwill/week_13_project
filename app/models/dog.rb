class Dog < ApplicationRecord
  include PgSearch::Model

  validates :name, :age, :breed, presence: true

  paginates_per 5

  pg_search_scope :search_dogs, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end