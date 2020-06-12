class Cat < ApplicationRecord
  include PgSearch::Model

  validates :name, :age, presence: true

  paginates_per 5

  pg_search_scope :search_cats, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end