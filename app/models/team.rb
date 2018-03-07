class Team < ActiveRecord::Base
	has_many :opening_starting_lineup
	has_one :league

	scope :team_id, ->(name_en){ find_by(name_en: name_en).id}

	class << self
		def all_teams
			all
		end

		def all_teams_name
			pluck(:name_en)
		end

		def central_teams
			where(league_id: League.central_id)
		end

		def pacific_teams
			where(league_id: League.pacific_id)
		end

		def name_regexp_for_routing
			Regexp.union(self.all_teams_name)
		end
	end
end
