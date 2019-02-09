class AddColumnPlayer < ActiveRecord::Migration
  def change
    add_column :players, :year, :integer, default: 2018
  end
end
