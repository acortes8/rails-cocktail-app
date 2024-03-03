class Ingredient < ApplicationRecord
  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients

  validates :name, presence: true

  include PgSearch::Model
  multisearchable against: :name
end
