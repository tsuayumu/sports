class OpeningStartingLineup::DefaultLineups2018

	LINEUPS = {
		giants: {
			one: 	"立岡",
			two: 	"吉川",
			three: 	"坂本　勇人",
			four: 	"ゲレーロ",
			five: 	"マギー",
			six: 	"岡本",
			seven: 	"陽",
			eight:  "大城",
			nine: 	"菅野"
		},
		tigers: {
			one: 	"西岡",
			two: 	"鳥谷",
			three: 	"糸井",
			four: 	"ロサリオ",
			five: 	"福留",
			six: 	"中谷",
			seven: 	"髙山",
			eight:  "梅野",
			nine: 	"藤浪"
		},
		swallows: {
			one: 	"青木",
			two: 	"川端",
			three: 	"山田",
			four: 	"バレンティン",
			five: 	"雄平",
			six: 	"畠山",
			seven: 	"中村",
			eight:  "小川",
			nine: 	"坂口"
		},
		carp: {
			one: 	"田中",
			two: 	"菊池",
			three: 	"丸",
			four: 	"鈴木",
			five: 	"松山",
			six: 	"安部",
			seven: 	"西川",
			eight:  "會澤",
			nine: 	"薮田"
		},
		baystars: {
			one: 	"桑原",
			two: 	"大和",
			three: 	"梶谷",
			four: 	"筒香",
			five: 	"ロペス",
			six: 	"宮﨑",
			seven: 	"戸柱",
			eight:  "今永",
			nine: 	"倉本"
		},
		dragons: {
			one: 	"京田",
			two: 	"大島",
			three: 	"ビシエド",
			four: 	"福田",
			five: 	"平田",
			six: 	"遠藤",
			seven: 	"大野",
			eight:  "亀",
			nine: 	"大野"
		},
		hawks: {
			one: 	"今宮",
			two: 	"本多",
			three: 	"柳田",
			four: 	"内川",
			five: 	"デスパイネ",
			six: 	"中村",
			seven: 	"松田",
			eight:  "甲斐",
			nine: 	"上林"
		},
		fighters: {
			one: 	"西川",
			two: 	"大田",
			three: 	"近藤",
			four: 	"中田",
			five: 	"アルシア",
			six: 	"レアード",
			seven: 	"石井",
			eight:  "清水",
			nine: 	"中島"
		},
		buffaloes: {
			one: 	"岡田",
			two: 	"安達",
			three: 	"吉田",
			four: 	"ロメロ",
			five: 	"小谷野",
			six: 	"マレーロ",
			seven: 	"中島",
			eight:  "大城",
			nine: 	"伊藤"
		},
		marines: {
			one: 	"加藤",
			two: 	"荻野",
			three: 	"角中",
			four: 	"安田",
			five: 	"鈴木",
			six: 	"中村",
			seven: 	"井上",
			eight:  "田村",
			nine: 	"平沢"
		},
		eagles: {
			one: 	"茂木",
			two: 	"藤田",
			three: 	"ペゲーロ",
			four: 	"ウィーラー",
			five: 	"銀次",
			six: 	"島内",
			seven: 	"岡島",
			eight:  "オコエ",
			nine: 	"嶋"
		},
		lions: {
			one: 	"金子",
			two: 	"源田",
			three: 	"秋山",
			four: 	"山川",
			five: 	"浅村",
			six: 	"森",
			seven: 	"中村",
			eight:  "栗山",
			nine: 	"外崎"
		}
	}

	private_constant :LINEUPS

	def initialize(team_name)
		@team_name = team_name
	end

	def lineup
		lineup_to_id
	end

	def lineup_to_id
		team = LINEUPS[@team_name.to_sym]
		team_id = {}
		team_id[:one_id] = name_to_id(team, :one)
		team_id[:two_id] = name_to_id(team, :two)
		team_id[:three_id] = name_to_id(team, :three)
		team_id[:four_id] = name_to_id(team, :four)
		team_id[:five_id] = name_to_id(team, :five)
		team_id[:six_id] = name_to_id(team, :six)
		team_id[:seven_id] = name_to_id(team, :seven)
		team_id[:eight_id] = name_to_id(team, :eight)
		team_id[:nine_id] = name_to_id(team, :nine)
		team_id
	end

	def name_to_id(team, order)
		player = Player.where(team_id: Team.team_id(@team_name)).where("name like '%#{team[order]}%'").take
		raise team[order].inspect if player.nil?
		player.id
	end
end
