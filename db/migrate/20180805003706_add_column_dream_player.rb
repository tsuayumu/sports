class AddColumnDreamPlayer < ActiveRecord::Migration
  def change
  	add_column :dream_players, :steal, :integer, null: false, default: 0
  end
end
