class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name, null: false
    	t.references :team, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
