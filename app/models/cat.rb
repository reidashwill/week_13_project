class Cat < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_term, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end