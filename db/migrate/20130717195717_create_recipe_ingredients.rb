class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references  :recipe,      index: true,  null: false
      t.references  :ingredient,  index: true,  null: false
      t.float       :amount,                    null: false

      t.timestamps
    end
  end
end
