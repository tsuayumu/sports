module ApplicationHelper
	def central_teams_for_views
		Team.central_teams
	end

	def pacific_teams_for_views
		Team.pacific_teams
	end
end
