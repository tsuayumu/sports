class RenameTableOpeningLineup < ActiveRecord::Migration
  def change
  	rename_table :opening_starting_lineups, :lineup_manages
  end
end
