class Recipe < ActiveRecord::Base
	include WineSuggestion
  def self.random
    Recipe.all.sample
  end
end
