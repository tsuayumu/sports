class DreamLineupController < ApplicationController
	def index
		@dream_lineups = DreamLineupManage.all
		@lineup_form = DreamLineupForm.new
		@select_players = Player.team_player_and_id(1)
	end

	def create
		@form = DreamLineupForm.new(params[:dream_lineup_form])
		if @form.save
			redirect_to :index_dream_lineup
		else
			redirect_to :index_dream_lineup
		end
	end
end
