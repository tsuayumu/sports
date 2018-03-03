class CreateOpeningStartingLineups < ActiveRecord::Migration
  def change
    create_table :opening_starting_lineups do |t|
    	t.integer :user_id, null: true
    	t.integer :team_id, null: false
    	t.integer :year, null: false
    	t.string :one, null: false
    	t.string :two, null: false
    	t.string :three, null: false
    	t.string :four, null: false
    	t.string :five, null: false
    	t.string :six, null: false
    	t.string :seven, null: false
    	t.string :eight, null: false
    	t.string :nine, null: false
    	t.string :comment, null: true
      t.timestamps
    end
    add_index :opening_starting_lineups, :user_id
    add_index :opening_starting_lineups, :team_id
    add_index :opening_starting_lineups, [:user_id, :team_id]
  end
end
