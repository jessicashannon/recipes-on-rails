class Sentiment < ActiveRecord::Base
  attr_accessor :random

  def random
    Sentiment.all.sample
  end
end
