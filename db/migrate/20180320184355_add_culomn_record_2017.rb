class AddCulomnRecord2017 < ActiveRecord::Migration
  def change
  	add_column :player_record2017s, :era, :decimal, precision: 4, scale: 2, null: false, default: 0
  end
end
