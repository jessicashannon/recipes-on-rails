require_relative "../../config/initializers/keys.rb"

class Pet
  #This class calls the Petfinder API and creates a Pet object
  #with a @photo_url method by parsing the returned JSON.
  attr_accessor :photo_url, :parsed_hash, :name, :url, :link, :email, :animal_type

  def initialize
    @animal_type = "cat"
    @url = "http://api.petfinder.com/pet.getRandom?key=#{PETAPI}&animal=#{@animal_type}&output=basic&format=json"
    apicall
    if call_worked?
      assign_photo_url
      assign_name
      assign_email
    else
      call_failed
    end
  end

  def apicall
    begin
      json = RestClient.get(@url)
      @parsed_hash = JSON.parse(json)
    rescue
      "server error"
    end
  end

  def call_worked?
    @parsed_hash && @parsed_hash["petfinder"]["pet"]["media"]
  end

  def assign_photo_url
    @photo_url = @parsed_hash["petfinder"]["pet"]["media"]["photos"]["photo"][2]["$t"]
  end

  def assign_name
    @name = @parsed_hash["petfinder"]["pet"]["name"]["$t"]
  end

  def assign_email
    @email = @parsed_hash["petfinder"]["pet"]["contact"]["email"]["$t"]
  end

  def call_failed
    @photo_url = "/cat.jpg"
    @name = "Bobby"
    @email = "email@aspca.org"
  end

  def dog
    @animal_type = "dog"
  end

  def cat
    @animal_type = "cat"
  end

end
