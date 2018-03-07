class League < ActiveRecord::Base
	belongs_to :team

	CENTRAL = 1
	PACIFIC = 2

	private_constant :CENTRAL, :PACIFIC

	class << self
		def central_id
			CENTRAL
		end

		def pacific_id
			PACIFIC
		end
	end
end
