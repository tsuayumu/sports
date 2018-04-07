module ApplicationHelper

	# view用のメソッド　header footer
	def central_teams_for_views
		League.central_teams
	end

	def pacific_teams_for_views
		League.pacific_teams
	end

	# view用のメソッド　opening_starting_lineup
	def opening_starting_lineup_comments(opening_starting_lineup_id)
		OpeningStartingLineupComment.comments(opening_starting_lineup_id)
	end
end
