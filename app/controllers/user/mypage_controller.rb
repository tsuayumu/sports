class User::MypageController < ApplicationController
	def index
		@user = current_user
		#userの予想したスターティングメンバー12球団 nilあり
		@starting_lineups = @user.starting_lienups({year: 2018})
	end
end
