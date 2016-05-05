class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.string :preptime
      t.text :ingredients
      t.text :directions
      t.string :calories
      t.string :fats
      t.string :carbs
      t.string :protein

      t.timestamps null: false
    end
  end
end
