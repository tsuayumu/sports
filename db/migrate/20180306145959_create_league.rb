class CreateLeague < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
    	t.string :name, null: false
    	t.string :name_en, null: false
      t.timestamps
    end
  end
end
