class RemoveIngredientFromCocktail < ActiveRecord::Migration[7.0]
  def change
    remove_column :cocktails, :ingredient, :text
  end
end
