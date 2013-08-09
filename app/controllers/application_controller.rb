class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_tweets

  def load_tweets
    @tweets = Twitter.user_timeline[0..2]
  end


end
