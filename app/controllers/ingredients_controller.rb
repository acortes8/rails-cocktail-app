class IngredientsController < ApplicationController
  http_basic_authenticate_with name: "brevity", password: "CT9d43", except: [:index, :show]

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @connected_cocktails = @ingredient.cocktails
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: "Ingredient Successfully Created." }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: "Ingredient successfully updated."}
        format.json {render :show, status: :created, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :description)
    end
end