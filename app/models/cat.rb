class Cat < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_cats, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end