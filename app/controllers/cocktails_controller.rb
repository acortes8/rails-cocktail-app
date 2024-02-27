class CocktailsController < ApplicationController
  http_basic_authenticate_with name: "brevity", password: "CT9d43", except: [:index, :show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @cocktail_ingredients = @cocktail.cocktail_ingredients
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.cocktail_ingredients.build.build_ingredient
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    respond_to do |format|
      if params[:add_ingredient]
        @cocktail.cocktail_ingredients.build.build_ingredient
        format.html { render :new, status: :unprocessable_entity }
      else
        if @cocktail.save
          format.html { redirect_to @cocktail, notice: "Cocktail Successfully Created."}
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  end

  def add_ingredient
    @cocktail = Cocktail.new(cocktail_params.merge({id: params[:id]}))
    @cocktail.cocktail_ingredients.build.build_ingredient
    render :new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    binding.pry
    @cocktail = Cocktail.find(params[:id])
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to @cocktail, notice: "Cocktail successfully updated."}
        format.json {render :show, status: :created, location: @cocktail }
      else
        format.html { render :edit }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def cocktail_params
      params.require(:cocktail).permit(:name, :spirit_type, :image_url, :description, :instruction,
      cocktail_ingredients_attributes: [:id, :ingredient_id, :quantity, :unit, :description, :_destroy,
      ingredient_attributes: [:id, :name, :description]])
    end
end
