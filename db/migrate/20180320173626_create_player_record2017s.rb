class CreatePlayerRecord2017s < ActiveRecord::Migration
  def change
    create_table :player_record2017s do |t|
    	t.references :player, foreign_key: true
    	t.decimal :average, precision: 4, scale: 3, null: false, default: 0.000
    	t.integer :rbi, null: false, default: ""
    	t.integer :homerun, null: false, default: ""
    	t.integer :match, null: false, default: ""
    	t.integer :win, null: false, default: ""
    	t.integer :defeat, null: false, default: ""
    	t.integer :hold, null: false, default: ""
    	t.integer :save, null: false, default: ""
      t.timestamps
    end
    add_index :player_record2017s, :player_id
  end
end
