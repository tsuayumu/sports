class CreateOpeningStartingLineupComment < ActiveRecord::Migration
  def change
    create_table :opening_starting_lineup_comments do |t|
    	t.integer :opening_starting_lineup_id, null: false
    	t.integer :user_id, null: true
    	t.string :comment, null: false
      t.timestamps
    end
  end
end
