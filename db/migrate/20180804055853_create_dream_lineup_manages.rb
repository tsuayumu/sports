class CreateDreamLineupManages < ActiveRecord::Migration
  def change
    create_table :dream_lineup_manages do |t|
    	t.string :comment, default: ""
      t.timestamps
    end
  end
end
