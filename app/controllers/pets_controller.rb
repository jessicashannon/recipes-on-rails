class PetsController < ApplicationController

  def self.cat
    pet = Pet.new
    # while pet.photo_url == nil
    #   pet = Pet.new
    # end
    pet.photo_url
  end

end

class Pet
  #This class calls the Petfinder API and creates a Pet object
  #with a @photo method by parsing the returned JSON.

  attr_accessor :photo_url, :parsed
  def initialize
    @url = "http://api.petfinder.com/pet.getRandom?key=1f6146612a770ffd0189a4d95ffc5953&animal=cat&output=basic&format=json"
    apicall
    if has_photos?
      photo_url
    else
      @photo_url = "/cat.jpg"
    end
  end

  def apicall
    petfinder = RestClient.get(@url)
    @parsed = JSON.parse(petfinder)
  end

  def has_photos?
    @parsed["petfinder"]["pet"]["media"]
  end

  def photo_url
    @photo_url = @parsed["petfinder"]["pet"]["media"]["photos"]["photo"][2]["$t"]
  end

end

# class PetfinderAPI
#   attr_accessor :info, :parsed
#   def initialize
#     @url = "http://api.petfinder.com/pet.getRandom?key=1f6146612a770ffd0189a4d95ffc5953&animal=cat&output=basic&format=json"
#     @info = {}
#     apicall
#   end
#
#   def apicall
#     openweather_json = RestClient.get(@url)
#     @parsed = JSON.parse(openweather_json)
#     rescue
#       "bad link"
#   end
#
#   # def returnhash
#   #   @info[:city] = @parsed["name"]
#   #   @info[:id] = @parsed["weather"][0]["id"]
#   #   @info[:temp] = @parsed["main"]["temp"]
#   #   @info
#   # end
# end
