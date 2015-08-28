class WelcomeController < ApplicationController
  def index
  end

  def random_sentiment
    Sentiment.all.sample
  end
end
