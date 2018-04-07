class League < ActiveRecord::Base
	has_many :teams

	enum status: { central: 1, pacific: 2 }

	class << self
		def central_teams
			find_by(status: statuses[:central]).try!(:teams)
		end

		def pacific_teams
			find_by(status: statuses[:pacific]).try!(:teams)
		end
	end
end
