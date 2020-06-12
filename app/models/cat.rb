class Cat < ApplicationRecord
  include PgSearch::Model

  validates :name, :age, presence: true
  
  pg_search_scope :search_cats, against: [:name],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }
end