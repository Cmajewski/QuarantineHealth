class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :workouts, :class_type, :class_type
  end
end
