class Recipe < ActiveRecord::Base
  has_and_belongs_to_many   :steps
  has_many                  :recipe_ingredients
  has_one                   :rating
end
