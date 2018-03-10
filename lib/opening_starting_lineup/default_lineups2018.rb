class OpeningStartingLineup::DefaultLineups2018
	LINEUPS = {
		giants: {
			one: 	"立岡",
			two: 	"吉川",
			three: 	"坂本",
			four: 	"ゲレーロ",
			five: 	"マギー",
			six: 	"岡本",
			seven: 	"陽岱鋼",
			eight:  "大城",
			nine: 	"菅野"
		},
		tigers: {
			one: 	"高山",
			two: 	"鳥谷",
			three: 	"糸井",
			four: 	"ロサリオ",
			five: 	"福留",
			six: 	"中谷",
			seven: 	"高山",
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
			eight:  "大城",
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
			six: 	"宮崎",
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
			one: 	"T−岡田",
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
			four: 	"ペーニャ",
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
		LINEUPS[@team_name.to_sym]
	end
end
