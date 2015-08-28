class PetsController < ApplicationController

  require 'config/keys.rb'
  def new
    petfinder = Petfinder::Client.new('PETFINDER_API', 'PETFINDER_SECRET')
  end
end
