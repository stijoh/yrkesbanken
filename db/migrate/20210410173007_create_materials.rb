class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :title
      t.references :profession, null: false, foreign_key: true

      t.timestamps
    end
  end
end