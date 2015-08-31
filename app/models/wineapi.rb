
require_relative "../../config/initializers/keys.rb"

class Wineapi

	attr_accessor :parsed_hash, :name, :link, :search_term

	def initialize()
		@search_term = ["sauvignon+blanc", "cabernet", "pinot+grigio", "noir", "malbec", "merlot", "syrah", "riesling"].sample
		@url = "http://services.wine.com/api/beta2/service.svc/json/catalog?search=#{@search_term}&state=NY&size=1&apikey=#{WINEAPI}"
    json = RestClient.get(@url)
    @parsed_hash = JSON.parse(json)
  end

  def name
  	@name = @parsed_hash["Products"]["List"][0]["Name"]
  end

  def link
  	@link = @parsed_hash["Products"]["List"][0]["Url"]
  end

end
