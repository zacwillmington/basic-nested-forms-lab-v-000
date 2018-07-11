require "pry"
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
      binding.pry
      @recipe = Recipe.new(recipe_params)

      if @recipe.save
          redirect_to @recipe
      else
          render :new
      end
  end

  def show
      @recipe = Recipe.find(params[:id])
  end

  private 

  def recipe_params
      params.require(:recipe).permit(:title, :ingredients_attributes => [:name, :ingredients])
  end
end
