class CreateKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :platform_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
