class Recipe < ActiveRecord::Base
  def self.random
    Recipe.all.sample
  end
end
