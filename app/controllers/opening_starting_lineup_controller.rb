class OpeningStartingLineupController < ApplicationController

	def index
		@team = Team.team(params[:team])
		@year = params[:year]
		@lineup_form = OpeningStartingLineupForm.new(default_lineup)
		@opening_lineups = OpeningStartingLineup.team_lienups(params[:team], params[:year]).reverse
		@comment_form = OpeningStartingLineupCommentForm.new
	end

	def create
		@form = OpeningStartingLineupForm.new(params[:opening_starting_lineup_form])
		@form.save
		redirect_to :index_opening_starting_lineup
	end

	def create_comment
		@form = OpeningStartingLineupCommentForm.new(params[:opening_starting_lineup_comment_form])
		@form.save
		redirect_to :index_opening_starting_lineup
	end

	private
	def default_lineup
		OpeningStartingLineup::DefaultLineups2018.new(params[:team]).lineup
	end
end
