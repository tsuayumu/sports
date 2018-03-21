require 'nokogiri'
require 'open-uri'

TEAM = [
	{ name_en: "giants", key: "g" },
	{ name_en: "tigers", key: "c" },
	{ name_en: "swallows", key: "s" },
	{ name_en: "carp", key: "t" },
	{ name_en: "baystars", key: "yb" },
	{ name_en: "dragons", key: "d" },
	{ name_en: "hawks", key: "f" },
	{ name_en: "fighters", key: "h" },
	{ name_en: "buffaloes", key: "m" },
	{ name_en: "marines", key: "l" },
	{ name_en: "eagles", key: "e" },
	{ name_en: "lions", key: "bs" }
]

TEAM.each do |team|

	url = "http://baseball-data.com/player/#{team[:key]}/"

	charset = nil

	html = open(url) do |f|
	  charset = f.charset
	  f.read
	end

	doc = Nokogiri::HTML.parse(html, nil, charset)

	doc.xpath('//tr').each do |node|
		player = Player.new
		player.name = node.search("td:nth-child(2)").text
		player.team_id = Team.team_id("#{team[:name_en]}")
		player.save!
	end
end