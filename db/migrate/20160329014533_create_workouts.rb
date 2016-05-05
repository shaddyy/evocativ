class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :body
      t.string :date
      t.text :log
      t.string :user

      t.timestamps null: false
    end
  end
end
