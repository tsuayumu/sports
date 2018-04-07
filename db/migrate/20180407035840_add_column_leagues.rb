class AddColumnLeagues < ActiveRecord::Migration
  def change
  	add_column :leagues, :status, :integer, null: false, default: 0
  end
end
