class OpeningStartingLineupForm
	include ActiveModel::Model

	attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :team_id, :year

	def save
		opening_starting_lineup = OpeningStartingLineup.new(one: one, two: two, three: three, four: four, five: five, six: six, seven: seven, eight: eight, nine: nine, team_id: team_id, year: year)
		opening_starting_lineup.save!
	end
end
