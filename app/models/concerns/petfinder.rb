require 'config/keys.rb'
def cats
  petfinder = Petfinder::Client.new('PETFINDER_API', 'PETFINDER_SECRET')
  cats = pets.find_pets('cat', 11237, count: 5)
end
