class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
