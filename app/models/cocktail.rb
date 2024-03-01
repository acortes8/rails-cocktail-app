class Cocktail < ApplicationRecord
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients
  has_one_attached :image

  accepts_nested_attributes_for :cocktail_ingredients, allow_destroy: true
  accepts_nested_attributes_for :ingredients

  validates :name, presence: true
  validates :image, attached: true
  
  before_save :find_or_create_ingredients

  def find_or_create_ingredients
    self.cocktail_ingredients.each do |cocktail_ingredient|
      cocktail_ingredient.ingredient = Ingredient.find_or_create_by(name:cocktail_ingredient.ingredient.name)
    end
  end

  def self.search_by_ingredients(ingredients)
    joins(:ingredients)
      .where('LOWER(ingredients.name) IN (?)', ingredients.map(&:downcase))
      .group('cocktails.id')
      .order(Arel.sql('COUNT(DISTINCT ingredients.id) DESC'))
      .having('COUNT(DISTINCT ingredients.id) >= ?', 1)
      .select('cocktails.*, COUNT(DISTINCT ingredients.id) AS matching_ingredients_count')
  end

end
