class OpeningStartingLineupController < ApplicationController
	def index
		@team = Team.team(params[:team])
		@year = params[:year]
		@form = OpeningStartingLineupForm.new
		@opening_lineups = OpeningStartingLineup.team_lienups(params[:team], params[:year])
	end

	def create
		@form = OpeningStartingLineupForm.new(params[:opening_starting_lineup_form])
		@form.save
		redirect_to :index_opening_starting_lineup
	end
end
