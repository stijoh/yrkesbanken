class CreateYrkeTemas < ActiveRecord::Migration[6.1]
  def change
    create_table :yrke_temas do |t|
      t.references :yrke, null: false, foreign_key: true
      t.references :tema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
