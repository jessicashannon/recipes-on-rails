module WineSuggestion

WHITE = ["Chardonnay",
"Sauvignon Blanc",
"Pinot grigio",
"Riesling",
"Vinho Verde",
"Chablis",
"Trebbiano",
"White Rioja",
"Chenin Blanc",
"Cortese",
"Pinot Blanc",
"Verdicchio",
"Verdejo"]

RED = ["Pinot Noir",
"Rioja",
"Cabernet sauvignon",
"Merlot",
"Malbec",
"Syrah",
"Shiraz",
"Zinfandel",
"Sangiovese"]

	def wine_suggestion(ingredient)
		if ["beef", "lamb"].include?(ingredient)
			RED.sample
		else
			WHITE.sample
		end
	end
end

