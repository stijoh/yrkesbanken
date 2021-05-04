class Add < ActiveRecord::Migration[6.1]
  def change
    change_column_null :yrkes, :tema_id, true
  end
end
