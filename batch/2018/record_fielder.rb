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

	url = "http://baseball-data.com/17/stats/hitter-#{team[:key]}/"

	charset = nil

	html = open(url) do |f|
	    charset = f.charset
	    f.read
	end

	doc = Nokogiri::HTML.parse(html, nil, charset)

	doc.xpath('//tr').each do |node|
		player = Player.find_by(name: node.search("td:nth-child(2)").text)
		if player.present? && !player.id.nil?
			record = PlayerRecord2017.find_by(player_id: player.id)
			if record.nil?
				record = PlayerRecord2017.new
			end
			p player.name
			p node.search("td:nth-child(3)").text.to_f
			p node.search("td:nth-child(9)").text.to_i
			p node.search("td:nth-child(8)").text.to_i
			record.player_id = player.id
			record.average = node.search("td:nth-child(3)").text.to_f
			record.rbi = node.search("td:nth-child(9)").text.to_i
			record.homerun = node.search("td:nth-child(8)").text.to_i
			record.save!
		end
	end
end
