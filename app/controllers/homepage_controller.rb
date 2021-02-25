class HomepageController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end
