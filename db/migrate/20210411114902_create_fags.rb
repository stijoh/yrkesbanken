class CreateFags < ActiveRecord::Migration[6.1]
  def change
    create_table :fags do |t|
      t.string :navn

      t.timestamps
    end
  end
end
