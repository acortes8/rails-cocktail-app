class Cocktail < ApplicationRecord
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients

  accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: true

  validates :name, presence: true
  validates :image_url, presence: true
end
