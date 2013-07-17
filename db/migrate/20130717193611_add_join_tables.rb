class AddJoinTables < ActiveRecord::Migration
  def change
    create_join_table :recipes, :steps, column_options: {null: false} do |t|
      t.index :recipe_id
      t.index :step_id
    end

    create_join_table :recipes, :ingredients, column_options: {null: false} do |t|
      t.float :amount, null: false
      t.index :recipe_id
      t.index :ingredient_id
    end

    # add references
    change_table :recipes do |t|
      add_reference :ratings, :recipe, index: true
    end
  end
end
