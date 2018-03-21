class Player < ActiveRecord::Base
	has_one :player_record2017
	belongs_to :team

	class << self
		def team_player_and_id(team)
			name_and_id = []
			players = where(team_id: team)
			players.each do |player|
				name_and_id << [player.name, player.id]
			end
			name_and_id
		end
	end
end
