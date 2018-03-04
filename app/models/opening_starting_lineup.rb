class OpeningStartingLineup < ActiveRecord::Base
	scope :team, ->(team){ where(team_id: team) }
	scope :year, ->(year){ where(year: year) }

	belongs_to :team

	class << self
		def team_lienups(team, year)
			team_id = Team.team_id(team)
			team(team_id).year(year)
		end
	end
end
