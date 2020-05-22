class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :type
      t.text :description
      t.datetime :time
      t.string :url
      t.integer :platform_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
