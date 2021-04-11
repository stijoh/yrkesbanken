class CreateOppgavers < ActiveRecord::Migration[6.1]
  def change
    create_table :oppgavers do |t|
      t.string :navn
      t.text :beskrivelse
      t.references :tema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
