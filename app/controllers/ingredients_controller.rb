class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredients.all
  end
end
