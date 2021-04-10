class AddDescriptionToGoal < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :description, :text
  end
end
