class Ingredient < ApplicationRecord
  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients

  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name
end
