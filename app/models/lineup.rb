class Lineup < ActiveRecord::Base
	belongs_to :lineup_manage

	ORDER_ARRAY = [:one_id, :two_id, :three_id, :four_id, :five_id, :six_id, :seven_id, :eight_id, :nine_id]

	class << self
		def team_lienups(team, year)
			team_id = Team.team_id(team)
			team(team_id).year(year)
		end

		def order_array
			ORDER_ARRAY
		end
	end
end
