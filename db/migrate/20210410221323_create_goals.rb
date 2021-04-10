class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
