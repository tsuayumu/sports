class TopController < ApplicationController
	def index
		@central_teams = Team.central_teams
		@pacific_teams = Team.pacific_teams
	end
end
