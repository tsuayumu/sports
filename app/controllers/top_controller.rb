class TopController < ApplicationController
	def index
		@teams = Team.all_teams
	end
end
