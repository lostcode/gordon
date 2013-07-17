class AddNameToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :name, :string
    add_index :recipes, :name
  end
end
