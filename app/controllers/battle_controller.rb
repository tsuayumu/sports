class BattleController < ApplicationController
	def index
		battle = Battle.new(session[:my_opening_lineup_id], params[:opening_lineup_id])
		render :index, json: { status: 'success', score: battle.score }
	end

	def create
		session[:my_opening_lineup_id] = params[:opening_lineup_id]
		render :index, json: { status: 'success' }
	end
end
