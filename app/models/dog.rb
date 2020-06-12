class Dog < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_dogs, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end