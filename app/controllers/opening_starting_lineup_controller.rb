class OpeningStartingLineupController < ApplicationController
	def index
		@opening_lineups = OpeningStartingLineup.team_lienups(params[:team], params[:year])
	end
end
