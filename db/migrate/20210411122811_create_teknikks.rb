class CreateTeknikks < ActiveRecord::Migration[6.1]
  def change
    create_table :teknikks do |t|
      t.string :navn
      t.references :yrke, null: false, foreign_key: true

      t.timestamps
    end
  end
end
