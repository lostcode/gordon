class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :rating_id

      t.timestamps
    end
  end
end
