class CreateOpeningStartingLineups < ActiveRecord::Migration
  def change
    create_table :opening_starting_lineups do |t|
      t.references :user, index: true, foreign_key: true, null: true
      t.references :team, index: true, foreign_key: true, null: false
      t.integer :year, null: false
      t.references :one, index: true, foreign_key: { to_table: :player }, null: false
      t.references :two, index: true, foreign_key: { to_table: :player }, null: false
      t.references :three, index: true, foreign_key: { to_table: :player }, null: false
      t.references :four, index: true, foreign_key: { to_table: :player }, null: false
      t.references :five, index: true, foreign_key: { to_table: :player }, null: false
      t.references :six, index: true, foreign_key: { to_table: :player }, null: false
      t.references :seven, index: true, foreign_key: { to_table: :player }, null: false
      t.references :eight, index: true, foreign_key: { to_table: :player }, null: false
      t.references :nine, index: true, foreign_key: { to_table: :player }, null: false
      t.string :comment, null: true
      t.timestamps
    end
  end
end
