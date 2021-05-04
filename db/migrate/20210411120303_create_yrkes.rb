class CreateYrkes < ActiveRecord::Migration[6.1]
  def change
    create_table :yrkes do |t|
      t.string :navn
      t.references :tema, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
