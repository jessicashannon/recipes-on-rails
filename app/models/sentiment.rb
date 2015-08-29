class Sentiment < ActiveRecord::Base
  attr_accessor :random

  def self.random
    Sentiment.all.sample.sentiments
  end
end
