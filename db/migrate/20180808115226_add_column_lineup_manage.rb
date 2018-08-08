class AddColumnLineupManage < ActiveRecord::Migration
  def change
  	add_column :lineup_manages, :win, :integer, null: false, default: 0
  	add_column :lineup_manages, :lose, :integer, null: false, default: 0
  	add_column :lineup_manages, :draw, :integer, null: false, default: 0
  end
end
