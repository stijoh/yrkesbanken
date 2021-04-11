class CreateKompetansemaals < ActiveRecord::Migration[6.1]
  def change
    create_table :kompetansemaals do |t|
      t.string :navn
      t.text :beskrivelse
      t.references :fag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
