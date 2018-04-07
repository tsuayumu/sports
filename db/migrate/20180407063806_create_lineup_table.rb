class CreateLineupTable < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
    	t.references :player, foreign_key: true
    	t.references :lineup_manage, index: true, foreign_key: true
    	t.integer :order, null: false
    end
  end
end
