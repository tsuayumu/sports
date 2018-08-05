class CreateDreamPlayers < ActiveRecord::Migration
  def change
    create_table :dream_players do |t|
    	t.decimal :average, precision: 4, scale: 3, null: false, default: 0.000
    	t.integer :rbi, null: false, default: ""
    	t.integer :homerun, null: false, default: ""
      t.timestamps
    end
  end
end
