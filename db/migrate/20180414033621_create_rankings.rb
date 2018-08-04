class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
    	t.integer :rank, null: false
    	t.references :team, index: true, foreign_key: true, null: true
      t.timestamps
    end
  end
end
