class OpeningStartingLineupForm
	include ActiveModel::Model

	attr_accessor :one_id, :two_id, :three_id, :four_id, :five_id, :six_id, :seven_id, :eight_id, :nine_id, :team_id, :year

	def save
		opening_starting_lineup = OpeningStartingLineup.new(one_id: one_id, two_id: two_id, three_id: three_id, four_id: four_id, five_id: five_id, six_id: six_id, seven_id: seven_id, eight_id: eight_id, nine_id: nine_id, team_id: team_id, year: year)
		opening_starting_lineup.save!
	end
end
