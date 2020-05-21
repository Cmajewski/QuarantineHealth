class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
