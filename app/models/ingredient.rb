class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  def ingredients_attributes=(ingredient_attributes)
      binding.pry
  end
end
