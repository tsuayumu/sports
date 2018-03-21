class CreateOpeningStartingLineupComment < ActiveRecord::Migration
  def change
    create_table :opening_starting_lineup_comments do |t|
    	t.references :opening_starting_lineup, index: { name: 'index_opening_starting_lineup_id' }, foreign_key: true, null: false
    	t.references :user, index: { name: 'index_opening_starting_user_id' }, foreign_key: true, null: true
    	t.string :comment, null: false
      t.timestamps
    end
  end
end
