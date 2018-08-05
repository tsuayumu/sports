class Battle

	def initialize(my_opening_lineup_id, enemy_opening_lineup_id)
		@my_offence = Offense.new(my_opening_lineup_id)
		@enemy_offence = Offense.new(enemy_opening_lineup_id)
		@my_offence.playball
		@enemy_offence.playball
	end

	def score
		"あなた：#{@my_offence.total_score} 点  相手：#{@enemy_offence.total_score} 点"
	end
end
